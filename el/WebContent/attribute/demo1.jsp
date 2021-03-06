<%@page import="java.util.HashMap"%>
<%@page import="vo.Artist"%>
<%@page import="vo.song"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
    
<%
	// 요청객체에 값 담기.
	request.setAttribute("team", "레드벨벳");
	request.setAttribute("member", new String[]{"웬디", "아이린", "슬기", "조이", "예리"});
	
	ArrayList<String> albums = new ArrayList<>();
	albums.add("행복");
	albums.add("Rookie");
	request.setAttribute("albums", albums);
	
	Artist artist = new Artist("아이유", "페이브엔터테인먼트", "25");
	
	song firstSong = new song();
	firstSong.setTitle("좋은날");
	firstSong.setArtist(artist);
	firstSong.setRunningTime(320);
	firstSong.setCompany("로엔");
	request.setAttribute("song", firstSong);
	
	HashMap<String, Object> movie = new HashMap<>();
	movie.put("title", "조작된도시");
	movie.put("actor", "지창욱,심은경,오정세");
	movie.put("director", "아이린");
	movie.put("genre", "범죄/액션");
	movie.put("running-time", "126분");
	request.setAttribute("movie", movie);

	// demo2.jsp로 이동시키기 - forward
	request.getRequestDispatcher("demo2.jsp").forward(request, response);
	
%>