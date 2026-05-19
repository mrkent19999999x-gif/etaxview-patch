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

        String quotedPath = "\"" + jarPath.toString() + "\"";
        String agentOpt = "-javaagent:" + quotedPath;
        String existing = System.getenv("JAVA_TOOL_OPTIONS");

        if (existing != null && existing.contains(agentOpt)) {
            System.out.println(PREFIX + " Already installed. Run iTaxViewer normally.");
            return;
        }

        String newValue = (existing == null || existing.trim().isEmpty())
            ? agentOpt
            : existing + " " + agentOpt;

        String os = System.getProperty("os.name").toLowerCase();
        if (os.contains("windows")) {
            if (setEnv("JAVA_TOOL_OPTIONS", newValue, true)) {
                System.out.println(PREFIX + " Installed (system-wide)!");
            } else if (setEnv("JAVA_TOOL_OPTIONS", newValue, false)) {
                System.out.println(PREFIX + " Installed (current user).");
                System.out.println(PREFIX + " For system-wide install, re-run as Administrator.");
            } else {
                System.out.println(PREFIX + " ERROR: setx not found or failed.");
                System.out.println(PREFIX + " Run this command manually as Administrator:");
                System.out.println("  setx JAVA_TOOL_OPTIONS \"" + newValue + "\" /M");
                return;
            }
            System.out.println(PREFIX + " Now run iTaxViewer normally - signature bypass active.");
            System.out.println(PREFIX + " Jar path: " + jarPath);
            System.out.println(PREFIX + " To uninstall: setx JAVA_TOOL_OPTIONS \"\" /M");
        } else {
            System.out.println(PREFIX + " On Linux/macOS, run this once:");
            System.out.println("  export JAVA_TOOL_OPTIONS=\"" + newValue + "\"");
            System.out.println(PREFIX + " Or add the line above to ~/.bashrc for persistence.");
        }
    }

    private static boolean setEnv(String name, String value, boolean systemWide) {
        try {
            String[] cmd = systemWide
                ? new String[]{"setx", name, value, "/M"}
                : new String[]{"setx", name, value};
            ProcessBuilder pb = new ProcessBuilder(cmd);
            pb.redirectErrorStream(true);
            Process p = pb.start();
            int rc = p.waitFor();
            return rc == 0;
        } catch (Exception e) {
            return false;
        }
    }
}
