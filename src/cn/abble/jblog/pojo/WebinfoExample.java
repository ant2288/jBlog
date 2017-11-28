package cn.abble.jblog.pojo;

import java.util.ArrayList;
import java.util.List;

public class WebinfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WebinfoExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andWidIsNull() {
            addCriterion("wid is null");
            return (Criteria) this;
        }

        public Criteria andWidIsNotNull() {
            addCriterion("wid is not null");
            return (Criteria) this;
        }

        public Criteria andWidEqualTo(Integer value) {
            addCriterion("wid =", value, "wid");
            return (Criteria) this;
        }

        public Criteria andWidNotEqualTo(Integer value) {
            addCriterion("wid <>", value, "wid");
            return (Criteria) this;
        }

        public Criteria andWidGreaterThan(Integer value) {
            addCriterion("wid >", value, "wid");
            return (Criteria) this;
        }

        public Criteria andWidGreaterThanOrEqualTo(Integer value) {
            addCriterion("wid >=", value, "wid");
            return (Criteria) this;
        }

        public Criteria andWidLessThan(Integer value) {
            addCriterion("wid <", value, "wid");
            return (Criteria) this;
        }

        public Criteria andWidLessThanOrEqualTo(Integer value) {
            addCriterion("wid <=", value, "wid");
            return (Criteria) this;
        }

        public Criteria andWidIn(List<Integer> values) {
            addCriterion("wid in", values, "wid");
            return (Criteria) this;
        }

        public Criteria andWidNotIn(List<Integer> values) {
            addCriterion("wid not in", values, "wid");
            return (Criteria) this;
        }

        public Criteria andWidBetween(Integer value1, Integer value2) {
            addCriterion("wid between", value1, value2, "wid");
            return (Criteria) this;
        }

        public Criteria andWidNotBetween(Integer value1, Integer value2) {
            addCriterion("wid not between", value1, value2, "wid");
            return (Criteria) this;
        }

        public Criteria andWtitleIsNull() {
            addCriterion("wtitle is null");
            return (Criteria) this;
        }

        public Criteria andWtitleIsNotNull() {
            addCriterion("wtitle is not null");
            return (Criteria) this;
        }

        public Criteria andWtitleEqualTo(String value) {
            addCriterion("wtitle =", value, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleNotEqualTo(String value) {
            addCriterion("wtitle <>", value, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleGreaterThan(String value) {
            addCriterion("wtitle >", value, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleGreaterThanOrEqualTo(String value) {
            addCriterion("wtitle >=", value, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleLessThan(String value) {
            addCriterion("wtitle <", value, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleLessThanOrEqualTo(String value) {
            addCriterion("wtitle <=", value, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleLike(String value) {
            addCriterion("wtitle like", value, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleNotLike(String value) {
            addCriterion("wtitle not like", value, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleIn(List<String> values) {
            addCriterion("wtitle in", values, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleNotIn(List<String> values) {
            addCriterion("wtitle not in", values, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleBetween(String value1, String value2) {
            addCriterion("wtitle between", value1, value2, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWtitleNotBetween(String value1, String value2) {
            addCriterion("wtitle not between", value1, value2, "wtitle");
            return (Criteria) this;
        }

        public Criteria andWkeywordIsNull() {
            addCriterion("wkeyword is null");
            return (Criteria) this;
        }

        public Criteria andWkeywordIsNotNull() {
            addCriterion("wkeyword is not null");
            return (Criteria) this;
        }

        public Criteria andWkeywordEqualTo(String value) {
            addCriterion("wkeyword =", value, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordNotEqualTo(String value) {
            addCriterion("wkeyword <>", value, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordGreaterThan(String value) {
            addCriterion("wkeyword >", value, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordGreaterThanOrEqualTo(String value) {
            addCriterion("wkeyword >=", value, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordLessThan(String value) {
            addCriterion("wkeyword <", value, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordLessThanOrEqualTo(String value) {
            addCriterion("wkeyword <=", value, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordLike(String value) {
            addCriterion("wkeyword like", value, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordNotLike(String value) {
            addCriterion("wkeyword not like", value, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordIn(List<String> values) {
            addCriterion("wkeyword in", values, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordNotIn(List<String> values) {
            addCriterion("wkeyword not in", values, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordBetween(String value1, String value2) {
            addCriterion("wkeyword between", value1, value2, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWkeywordNotBetween(String value1, String value2) {
            addCriterion("wkeyword not between", value1, value2, "wkeyword");
            return (Criteria) this;
        }

        public Criteria andWdescribeIsNull() {
            addCriterion("wdescribe is null");
            return (Criteria) this;
        }

        public Criteria andWdescribeIsNotNull() {
            addCriterion("wdescribe is not null");
            return (Criteria) this;
        }

        public Criteria andWdescribeEqualTo(String value) {
            addCriterion("wdescribe =", value, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeNotEqualTo(String value) {
            addCriterion("wdescribe <>", value, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeGreaterThan(String value) {
            addCriterion("wdescribe >", value, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeGreaterThanOrEqualTo(String value) {
            addCriterion("wdescribe >=", value, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeLessThan(String value) {
            addCriterion("wdescribe <", value, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeLessThanOrEqualTo(String value) {
            addCriterion("wdescribe <=", value, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeLike(String value) {
            addCriterion("wdescribe like", value, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeNotLike(String value) {
            addCriterion("wdescribe not like", value, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeIn(List<String> values) {
            addCriterion("wdescribe in", values, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeNotIn(List<String> values) {
            addCriterion("wdescribe not in", values, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeBetween(String value1, String value2) {
            addCriterion("wdescribe between", value1, value2, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWdescribeNotBetween(String value1, String value2) {
            addCriterion("wdescribe not between", value1, value2, "wdescribe");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleIsNull() {
            addCriterion("wFirstTitle is null");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleIsNotNull() {
            addCriterion("wFirstTitle is not null");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleEqualTo(String value) {
            addCriterion("wFirstTitle =", value, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleNotEqualTo(String value) {
            addCriterion("wFirstTitle <>", value, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleGreaterThan(String value) {
            addCriterion("wFirstTitle >", value, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleGreaterThanOrEqualTo(String value) {
            addCriterion("wFirstTitle >=", value, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleLessThan(String value) {
            addCriterion("wFirstTitle <", value, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleLessThanOrEqualTo(String value) {
            addCriterion("wFirstTitle <=", value, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleLike(String value) {
            addCriterion("wFirstTitle like", value, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleNotLike(String value) {
            addCriterion("wFirstTitle not like", value, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleIn(List<String> values) {
            addCriterion("wFirstTitle in", values, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleNotIn(List<String> values) {
            addCriterion("wFirstTitle not in", values, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleBetween(String value1, String value2) {
            addCriterion("wFirstTitle between", value1, value2, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWfirsttitleNotBetween(String value1, String value2) {
            addCriterion("wFirstTitle not between", value1, value2, "wfirsttitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleIsNull() {
            addCriterion("wSecTitle is null");
            return (Criteria) this;
        }

        public Criteria andWsectitleIsNotNull() {
            addCriterion("wSecTitle is not null");
            return (Criteria) this;
        }

        public Criteria andWsectitleEqualTo(String value) {
            addCriterion("wSecTitle =", value, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleNotEqualTo(String value) {
            addCriterion("wSecTitle <>", value, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleGreaterThan(String value) {
            addCriterion("wSecTitle >", value, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleGreaterThanOrEqualTo(String value) {
            addCriterion("wSecTitle >=", value, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleLessThan(String value) {
            addCriterion("wSecTitle <", value, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleLessThanOrEqualTo(String value) {
            addCriterion("wSecTitle <=", value, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleLike(String value) {
            addCriterion("wSecTitle like", value, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleNotLike(String value) {
            addCriterion("wSecTitle not like", value, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleIn(List<String> values) {
            addCriterion("wSecTitle in", values, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleNotIn(List<String> values) {
            addCriterion("wSecTitle not in", values, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleBetween(String value1, String value2) {
            addCriterion("wSecTitle between", value1, value2, "wsectitle");
            return (Criteria) this;
        }

        public Criteria andWsectitleNotBetween(String value1, String value2) {
            addCriterion("wSecTitle not between", value1, value2, "wsectitle");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}