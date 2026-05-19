package itaxviewer.agent;

import java.lang.instrument.Instrumentation;

public class Agent {
    public static void premain(String args, Instrumentation inst) {
        inst.addTransformer(new SignatureBypassTransformer(), true);
        System.out.println("[iTaxViewer-Agent] Signature bypass agent loaded");
        System.out.println("[iTaxViewer-Agent] Patching: IHTKKXMLSignature, IHTKKXMLTemSignature, CertVerifier");
    }
}
