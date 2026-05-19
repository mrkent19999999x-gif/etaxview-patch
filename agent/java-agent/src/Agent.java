package itaxviewer.agent;

import java.awt.Desktop;
import java.io.File;
import java.io.PrintWriter;
import java.lang.instrument.Instrumentation;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public class Agent {

    private static final String PREFIX = "[iTaxViewer-Agent]";
    private static final String ENV_VAR = "_JAVA_OPTIONS";
    private static final String REG_FILE = "install-agent.reg";

    public static void premain(String args, Instrumentation inst) {
        inst.addTransformer(new SignatureBypassTransformer(), true);
        System.out.println(PREFIX + " Signature bypass agent loaded");
        System.out.println(PREFIX + " Patching: IHTKKXMLSignature, IHTKKXMLTemSignature, CertVerifier");
    }

    public static void main(String[] args) throws Exception {
        Path jarPath = Paths.get(Agent.class
            .getProtectionDomain()
            .getCodeSource()
            .getLocation()
            .toURI()).toAbsolutePath().normalize();

        String os = System.getProperty("os.name").toLowerCase();

        if (os.contains("windows")) {
            installWindows(jarPath);
        } else {
            installLinux(jarPath);
        }
    }

    private static void installWindows(Path jarPath) throws Exception {
        String jarAbsolute = jarPath.toString();
        String jarDir = jarPath.getParent().toString();

        // Double backslashes for .reg format
        String jarReg = jarAbsolute.replace("\\", "\\\\");
        String regContent = "Windows Registry Editor Version 5.00\r\n"
            + "\r\n"
            + "[HKEY_CURRENT_USER\\Environment]\r\n"
            + "\"" + ENV_VAR + "\"=\"-javaagent:" + jarReg + "\"\r\n";

        Path regPath = Paths.get(jarDir, REG_FILE);
        Files.write(regPath, regContent.getBytes(StandardCharsets.UTF_16LE));

        File regFile = regPath.toFile();

        System.out.println(PREFIX + " Created: " + regPath);
        System.out.println(PREFIX + " Env var: " + ENV_VAR);
        System.out.println(PREFIX + " Agent:   " + jarAbsolute);

        // Try to open the .reg file automatically
        boolean opened = false;
        try {
            if (Desktop.isDesktopSupported()) {
                Desktop dt = Desktop.getDesktop();
                if (dt.isSupported(Desktop.Action.OPEN)) {
                    dt.open(regFile);
                    opened = true;
                }
            }
        } catch (Exception e) {
            // fallback
        }

        if (opened) {
            System.out.println(PREFIX + " Registry editor opened. Click Yes to import.");
        } else {
            System.out.println(PREFIX + " Double-click this file to install:");
            System.out.println("  " + regPath);
            System.out.println(PREFIX + " Or run from cmd (Admin):");
            System.out.println("  reg import \"" + regPath + "\"");
        }

        System.out.println();
        System.out.println(PREFIX + " After installing, click iTaxViewer -> signature bypass active.");
        System.out.println(PREFIX + " To uninstall, delete env var " + ENV_VAR
            + " from Windows Environment Variables.");
    }

    private static void installLinux(Path jarPath) {
        String agentOpt = "-javaagent:" + jarPath.toString();
        System.out.println(PREFIX + " On Linux/macOS, run this once:");
        System.out.println("  export " + ENV_VAR + "=\"" + agentOpt + "\"");
        System.out.println(PREFIX + " Or add the line above to ~/.bashrc for persistence.");
    }
}
