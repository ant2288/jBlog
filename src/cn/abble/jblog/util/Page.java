package cn.abble.jblog.util;
/**
 * 分页用，计算页数用
 * @author Abble
 *
 */
public class Page {
	private int first = 1;//第一页
	private int last;//最后一页,也就是总页数
	private int current;//当前页
	private int next;//下一页
	private int previous;//上一页
	private int count;//文章总数
	private int size;//每页显示的数量
	
	public Page(int count,int size,int current) {
		this.count = count;
		this.size = size;
		this.current = current;
		
		last = count % size == 0 ? count / size : count / size + 1;
		next = current == last ? last:current + 1;
		previous = current == 1 ? 1 : current - 1;
		
	}

	public int getFirst() {
		return first;
	}

	public void setFirst(int first) {
		this.first = first;
	}

	public int getLast() {
		return last;
	}

	public void setLast(int last) {
		this.last = last;
	}

	public int getCurrent() {
		return current;
	}

	public void setCurrent(int current) {
		this.current = current;
	}

	public int getNext() {
		return next;
	}

	public void setNext(int next) {
		this.next = next;
	}

	public int getPrevious() {
		return previous;
	}

	public void setPrevious(int previous) {
		this.previous = previous;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}
	
	
	
}
