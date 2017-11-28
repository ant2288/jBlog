package cn.abble.jblog.pojo;

import java.util.Date;

public class Page {
    private Integer pid;

    private String ptitle;

    private String pdate;

    private Integer puser;

    private Integer cid;

    private String pcontext;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPtitle() {
        return ptitle;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle == null ? null : ptitle.trim();
    }

    public String getPdate() {
        return pdate;
    }

    public void setPdate(String pdate) {
        this.pdate = pdate;
    }

    public Integer getPuser() {
        return puser;
    }

    public void setPuser(Integer puser) {
        this.puser = puser;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getPcontext() {
        return pcontext;
    }

    public void setPcontext(String pcontext) {
        this.pcontext = pcontext == null ? null : pcontext.trim();
    }
}