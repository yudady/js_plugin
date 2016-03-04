
package com.foya.dto;

import org.apache.commons.lang.StringUtils;

public class NavItem implements Comparable<NavItem> {

	private String id;
	private String parent;
	private String text;
	private String type;
	private Attr a_attr;
	private Integer menuSort = 999;

	public NavItem(String id, String parent, String text, String href) {
		this.id = id;
		this.parent = parent;
		this.text = text;
		if (StringUtils.isNotBlank(href)) {
			this.type = "linkUrl";
			this.a_attr = new Attr(href);
		}
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Attr getA_attr() {
		return a_attr;
	}

	public void setA_attr(Attr a_attr) {
		this.a_attr = a_attr;
	}

	public Integer getMenuSort() {
		return menuSort;
	}

	public void setMenuSort(Integer menuSort) {
		this.menuSort = menuSort;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((parent == null) ? 0 : parent.hashCode());
		result = prime * result + ((text == null) ? 0 : text.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		NavItem other = (NavItem) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (parent == null) {
			if (other.parent != null)
				return false;
		} else if (!parent.equals(other.parent))
			return false;
		if (text == null) {
			if (other.text != null)
				return false;
		} else if (!text.equals(other.text))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "NavItem [id=" + id + ", parent=" + parent + ", text=" + text + "]";
	}

	//===================================================
	public class Attr {

		private String href;

		public Attr(String href) {
			this.href = href;
		}

		public String getHref() {
			return href;
		}

		public void setHref(String href) {
			this.href = href;
		}
	}

	@Override
	public int compareTo(NavItem o) {
		return (this.menuSort).compareTo(o.getMenuSort());
	}
}
