<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.sql.*,a.DaoDrv,a.DaoTable,a.DaoSx,a.DaoTable1,a.DaoTable2,a.DaoTable4"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form >
<%DaoSx t=new DaoSx();List <DaoTable>l=t.fg3();Iterator <DaoTable>it=l.iterator();int i=1,sum=0; %>
<%if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("a");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	} 
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("b");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("c");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("d");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("e");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("f");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("g");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("h");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("i");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("j");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("k");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("a1");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
	if(it.hasNext()){
		   DaoTable c=it.next();
		   String s=request.getParameter("b1");
		   if(s.equals(c.da)){sum+=3;}
		   i++;
		}
	if(it.hasNext()){
		   DaoTable c=it.next();
		   String s=request.getParameter("c1");
		   if(s.equals(c.da)){sum+=3;}
		   i++;
		}
	if(it.hasNext()){
		   DaoTable c=it.next();
		   String s=request.getParameter("d1");
		   if(s.equals(c.da)){sum+=3;}
		   i++;
		}
	if(it.hasNext()){
		   DaoTable c=it.next();
		   String s=request.getParameter("e1");
		   if(s.equals(c.da)){sum+=3;}
		   i++;
		}
	if(it.hasNext()){
		   DaoTable c=it.next();
		   String s=request.getParameter("f1");
		   if(s.equals(c.da)){sum+=3;}
		   i++;
		}
	if(it.hasNext()){
		   DaoTable c=it.next();
		   String s=request.getParameter("g1");
		   if(s.equals(c.da)){sum+=3;}
		   i++;
		}
	if(it.hasNext()){
		   DaoTable c=it.next();
		   String s=request.getParameter("h1");
		   if(s.equals(c.da)){sum+=3;}
		   i++;
		}
	if(it.hasNext()){
		   DaoTable c=it.next();
		   String s=request.getParameter("i1");
		   if(s.equals(c.da)){sum+=3;}
		   i++;
		}
	if(it.hasNext()){
		   DaoTable c=it.next();
		   String s=request.getParameter("j1");
		   if(s.equals(c.da)){sum+=3;}
		   i++;
		}
	if(it.hasNext()){
		   DaoTable c=it.next();
		   String s=request.getParameter("k1");
		   if(s.equals(c.da)){sum+=3;}
		   i++;
		}	if(it.hasNext()){
			   DaoTable c=it.next();
			   String s=request.getParameter("a2");
			   if(s.equals(c.da)){sum+=3;}
			   i++;
			}
			if(it.hasNext()){
				   DaoTable c=it.next();
				   String s=request.getParameter("b2");
				   if(s.equals(c.da)){sum+=3;}
				   i++;
				}
			if(it.hasNext()){
				   DaoTable c=it.next();
				   String s=request.getParameter("c2");
				   if(s.equals(c.da)){sum+=3;}
				   i++;
				}
			if(it.hasNext()){
				   DaoTable c=it.next();
				   String s=request.getParameter("d2");
				   if(s.equals(c.da)){sum+=3;}
				   i++;
				}
			if(it.hasNext()){
				   DaoTable c=it.next();
				   String s=request.getParameter("e2");
				   if(s.equals(c.da)){sum+=3;}
				   i++;
				}
			if(it.hasNext()){
				   DaoTable c=it.next();
				   String s=request.getParameter("f2");
				   if(s.equals(c.da)){sum+=3;}
				   i++;
				}
			if(it.hasNext()){
				   DaoTable c=it.next();
				   String s=request.getParameter("g2");
				   if(s.equals(c.da)){sum+=3;}
				   i++;
				}
			if(it.hasNext()){
				   DaoTable c=it.next();
				   String s=request.getParameter("h2");
				   if(s.equals(c.da)){sum+=3;}
				   i++;
				}
			if(it.hasNext()){
				   DaoTable c=it.next();
				   String s=request.getParameter("i2");
				   if(s.equals(c.da)){sum+=3;}
				   i++;
				}
			if(it.hasNext()){
				   DaoTable c=it.next();
				   String s=request.getParameter("j2");
				   if(s.equals(c.da)){sum+=3;}
				   i++;
				}
			if(it.hasNext()){
				   DaoTable c=it.next();
				   String s=request.getParameter("k2");
				   if(s.equals(c.da)){sum+=3;}
				   i++;
				}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("a3");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("b3");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}
if(it.hasNext()){
	   DaoTable c=it.next();
	   String s=request.getParameter("c3");
	   if(s.equals(c.da)){sum+=3;}
	   i++;
	}%>
<center><%="选择题得分:" %><%=sum %><%DaoTable4 y=new DaoTable4();y.xz=sum;y.bm=1;t.insert(y) ; %></center></form>
<%request.getRequestDispatcher("f.jsp").forward(request, response); %>
</body>
</html>