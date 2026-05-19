package itaxviewer.agent;

import java.lang.instrument.Instrumentation;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Agent {

    private static final String PREFIX = "[iTaxViewer-Agent]";

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

        String agentOpt = "-javaagent:" + jarPath.toString();
        String existing = System.getenv("JAVA_TOOL_OPTIONS");

        if (agentOpt.equals(existing)) {
            System.out.println(PREFIX + " Already installed. Run iTaxViewer normally.");
            return;
        }

        String os = System.getProperty("os.name").toLowerCase();
        if (os.contains("windows")) {
            ProcessBuilder pb = new ProcessBuilder(
                "setx", "JAVA_TOOL_OPTIONS", agentOpt, "/M");
            pb.inheritIO();
            Process p = pb.start();
            int rc = p.waitFor();
            if (rc == 0) {
                System.out.println(PREFIX + " Installed successfully!");
                System.out.println(PREFIX + " Now run iTaxViewer normally - signature bypass active.");
                System.out.println(PREFIX + " Jar path: " + jarPath);
                System.out.println(PREFIX + " To uninstall: setx JAVA_TOOL_OPTIONS \"\" /M");
            } else {
                System.out.println(PREFIX + " ERROR: setx failed (rc=" + rc + "). Run as Administrator.");
            }
        } else {
            System.out.println(PREFIX + " On Linux/macOS, run this once:");
            System.out.println("  export JAVA_TOOL_OPTIONS=\"" + agentOpt + "\"");
            System.out.println(PREFIX + " Or add the line above to ~/.bashrc for persistence.");
        }
    }
}
