package cn.abble.jblog.pojo;

public class Webinfo {
    private Integer wid;

    private String wtitle;

    private String wkeyword;

    private String wdescribe;

    private String wfirsttitle;

    private String wsectitle;

    public Integer getWid() {
        return wid;
    }

    public void setWid(Integer wid) {
        this.wid = wid;
    }

    public String getWtitle() {
        return wtitle;
    }

    public void setWtitle(String wtitle) {
        this.wtitle = wtitle == null ? null : wtitle.trim();
    }

    public String getWkeyword() {
        return wkeyword;
    }

    public void setWkeyword(String wkeyword) {
        this.wkeyword = wkeyword == null ? null : wkeyword.trim();
    }

    public String getWdescribe() {
        return wdescribe;
    }

    public void setWdescribe(String wdescribe) {
        this.wdescribe = wdescribe == null ? null : wdescribe.trim();
    }

    public String getWfirsttitle() {
        return wfirsttitle;
    }

    public void setWfirsttitle(String wfirsttitle) {
        this.wfirsttitle = wfirsttitle == null ? null : wfirsttitle.trim();
    }

    public String getWsectitle() {
        return wsectitle;
    }

    public void setWsectitle(String wsectitle) {
        this.wsectitle = wsectitle == null ? null : wsectitle.trim();
    }
}