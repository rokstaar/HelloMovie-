package movie.movie.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import movie.movie.db.MovieDAO;
import movie.movie.db.NaverAPIDTO;
import movie.review.db.ReviewDAO;

public class MovieDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" MovieDetailAction_execute 호출 ");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		String movieNm = request.getParameter("movieNm");
		String movieCd = request.getParameter("movieCd");
		
		NaverAPI api = new NaverAPI();
		NaverAPIDTO dto = api.getNaverAPI(movieNm);
		ReviewDAO dao = new ReviewDAO();
		List reviewList = dao.getMovieReview(movieCd);
		System.out.println("@@@@@@@@@@"+reviewList);
		
		request.setAttribute("reviewList", reviewList);
		
		request.setAttribute("userRating", dto.getUserRating());
		request.setAttribute("img", dto.getImg());
		
		MovieDAO Mdao = new MovieDAO();
		List tList = Mdao.getTime(movieCd);

		request.setAttribute("id", id);
		request.setAttribute("tList", tList);
		request.setAttribute("movieCd", movieCd);
		request.setAttribute("movieNm", movieNm);
		
		ActionForward forward = new ActionForward();
		
		forward.setPath("./movie/movieDetail.jsp");
		forward.setRedirect(false);
		
		
		return forward;
	}

}
