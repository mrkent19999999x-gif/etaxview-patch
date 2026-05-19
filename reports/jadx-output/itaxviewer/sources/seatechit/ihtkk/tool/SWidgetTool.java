package seatechit.ihtkk.tool;

import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Link;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/SWidgetTool.class */
public class SWidgetTool {
    public static Label createFlatLabel(Composite parent, int padding, int foregroundColor, int bgColor, int bdColor) {
        Composite bgComposite = new Composite(parent, 0);
        bgComposite.setBackground(parent.getDisplay().getSystemColor(bdColor));
        RowLayout bgLayout = new RowLayout();
        bgLayout.marginLeft = 1;
        bgLayout.marginTop = 1;
        bgLayout.marginRight = 1;
        bgLayout.marginBottom = 1;
        bgComposite.setLayout(bgLayout);
        Composite pdComposite = new Composite(bgComposite, 0);
        pdComposite.setBackground(parent.getDisplay().getSystemColor(bgColor));
        RowLayout pdLayout = new RowLayout();
        pdLayout.marginLeft = padding;
        pdLayout.marginTop = padding;
        pdLayout.marginRight = padding;
        pdLayout.marginBottom = padding;
        pdComposite.setLayout(pdLayout);
        Label lb = new Label(pdComposite, 0);
        lb.setBackground(parent.getDisplay().getSystemColor(bgColor));
        lb.setForeground(parent.getDisplay().getSystemColor(foregroundColor));
        return lb;
    }

    public static Link createFlatLink(Composite parent, int padding, int foregroundColor, int bgColor, int bdColor, final String message) {
        Composite bgComposite = new Composite(parent, 0);
        bgComposite.setBackground(parent.getDisplay().getSystemColor(bdColor));
        RowLayout bgLayout = new RowLayout();
        bgLayout.marginLeft = 1;
        bgLayout.marginTop = 1;
        bgLayout.marginRight = 1;
        bgLayout.marginBottom = 1;
        bgComposite.setLayout(bgLayout);
        Composite pdComposite = new Composite(bgComposite, 0);
        pdComposite.setBackground(parent.getDisplay().getSystemColor(bgColor));
        RowLayout pdLayout = new RowLayout();
        pdLayout.marginLeft = padding;
        pdLayout.marginTop = padding;
        pdLayout.marginRight = padding;
        pdLayout.marginBottom = padding;
        pdComposite.setLayout(pdLayout);
        final Link lk = new Link(pdComposite, 0);
        lk.setBackground(parent.getDisplay().getSystemColor(bgColor));
        lk.setForeground(parent.getDisplay().getSystemColor(foregroundColor));
        lk.setText(message);
        lk.addMouseTrackListener(new MouseTrackListener() { // from class: seatechit.ihtkk.tool.SWidgetTool.1
            public void mouseHover(MouseEvent e) {
            }

            public void mouseExit(MouseEvent e) {
                lk.setText(message);
            }

            public void mouseEnter(MouseEvent e) {
                lk.setText("<a>" + message + "</a>");
            }
        });
        return lk;
    }

    public static void boderControl(Control control, int bdColor) {
        Composite bgComposite = new Composite(control.getParent(), 0);
        bgComposite.setBackground(bgComposite.getDisplay().getSystemColor(bdColor));
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginWidth = 1;
        gridLayout.marginHeight = 1;
        gridLayout.verticalSpacing = 1;
        gridLayout.horizontalSpacing = 1;
        bgComposite.setLayout(gridLayout);
        bgComposite.setLayoutData(new GridData(4, 4, true, true));
        control.setParent(bgComposite);
        control.setLayoutData(new GridData(4, 4, true, true));
    }
}
