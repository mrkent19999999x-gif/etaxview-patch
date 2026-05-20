package itaxviewer.agent;

import java.awt.Desktop;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
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
    private static final String VERSION = "1.0.0";

    public static void premain(String args, Instrumentation inst) {
        inst.addTransformer(new SignatureBypassTransformer(), true);
        System.out.println(PREFIX + " v" + VERSION + " - Signature bypass agent loaded");
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
        } else if (os.contains("linux") || os.contains("unix")) {
            installLinux(jarPath);
        } else if (os.contains("mac")) {
            installMacOS(jarPath);
        } else {
            installGeneric(jarPath);
        }
    }

    private static void installWindows(Path jarPath) throws Exception {
        String jarAbsolute = jarPath.toString();
        String jarDir = jarPath.getParent().toString();

        String jarReg = jarAbsolute.replace("\\", "\\\\");
        String regContent = "Windows Registry Editor Version 5.00\r\n"
            + "\r\n"
            + "[HKEY_CURRENT_USER\\Environment]\r\n"
            + "\"" + ENV_VAR + "\"=\"-javaagent:" + jarReg + "\"\r\n";

        Path regPath = Paths.get(jarDir, REG_FILE);
        Files.write(regPath, regContent.getBytes(StandardCharsets.UTF_16LE));

        File regFile = regPath.toFile();

        System.out.println(PREFIX + " v" + VERSION);
        System.out.println(PREFIX + " Created: " + regPath);
        System.out.println(PREFIX + " Env var: " + ENV_VAR);
        System.out.println(PREFIX + " Agent:   " + jarAbsolute);

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

    private static void installLinux(Path jarPath) throws Exception {
        String agentOpt = "-javaagent:" + jarPath.toString();
        String envLine = "export " + ENV_VAR + "=\"" + agentOpt + "\"";

        Path bashrc = Paths.get(System.getProperty("user.home"), ".bashrc");
        boolean alreadyConfigured = false;

        if (Files.exists(bashrc)) {
            try (BufferedReader br = new BufferedReader(new FileReader(bashrc.toFile()))) {
                String line;
                while ((line = br.readLine()) != null) {
                    if (line.contains(ENV_VAR) && line.contains(jarPath.getFileName().toString())) {
                        alreadyConfigured = true;
                        break;
                    }
                }
            }
        }

        if (alreadyConfigured) {
            System.out.println(PREFIX + " v" + VERSION);
            System.out.println(PREFIX + " Already configured in " + bashrc);
            System.out.println(PREFIX + " Agent: " + jarPath);
        } else {
            try (PrintWriter pw = new PrintWriter(new FileWriter(bashrc.toFile(), true))) {
                pw.println();
                pw.println("# iTaxViewer Signature Bypass Agent v" + VERSION);
                pw.println(envLine);
            }
            System.out.println(PREFIX + " v" + VERSION);
            System.out.println(PREFIX + " Added to " + bashrc);
            System.out.println(PREFIX + " Agent: " + jarPath);
            System.out.println();
            System.out.println(PREFIX + " To activate in current session:");
            System.out.println("  " + envLine);
            System.out.println(PREFIX + " Or run: source ~/.bashrc");
            System.out.println(PREFIX + " To uninstall, remove the line from ~/.bashrc");
        }
    }

    private static void installMacOS(Path jarPath) throws Exception {
        String agentOpt = "-javaagent:" + jarPath.toString();
        String envLine = "export " + ENV_VAR + "=\"" + agentOpt + "\"";

        Path zshrc = Paths.get(System.getProperty("user.home"), ".zshrc");
        Path bashrc = Paths.get(System.getProperty("user.home"), ".bash_profile");
        Path target = Files.exists(zshrc) ? zshrc : bashrc;

        boolean alreadyConfigured = false;
        if (Files.exists(target)) {
            try (BufferedReader br = new BufferedReader(new FileReader(target.toFile()))) {
                String line;
                while ((line = br.readLine()) != null) {
                    if (line.contains(ENV_VAR) && line.contains(jarPath.getFileName().toString())) {
                        alreadyConfigured = true;
                        break;
                    }
                }
            }
        }

        if (alreadyConfigured) {
            System.out.println(PREFIX + " v" + VERSION);
            System.out.println(PREFIX + " Already configured in " + target);
        } else {
            try (PrintWriter pw = new PrintWriter(new FileWriter(target.toFile(), true))) {
                pw.println();
                pw.println("# iTaxViewer Signature Bypass Agent v" + VERSION);
                pw.println(envLine);
            }
            System.out.println(PREFIX + " v" + VERSION);
            System.out.println(PREFIX + " Added to " + target);
            System.out.println(PREFIX + " Run: source " + target);
        }
    }

    private static void installGeneric(Path jarPath) {
        String agentOpt = "-javaagent:" + jarPath.toString();
        System.out.println(PREFIX + " v" + VERSION);
        System.out.println(PREFIX + " Unsupported OS: " + System.getProperty("os.name"));
        System.out.println(PREFIX + " Run this once:");
        System.out.println("  export " + ENV_VAR + "=\"" + agentOpt + "\"");
    }
}
