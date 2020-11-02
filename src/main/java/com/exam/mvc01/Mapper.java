package com.exam.mvc01;

import java.util.ArrayList;

import model.BoardTO;
import model.CommentTO;
import model.LcategoryTO;
import model.ScategoryTO;
import model.SubjectTO;
import model.ViewSubjectTO;

public interface Mapper {
	
	public abstract ArrayList<LcategoryTO> study1LC();
	public abstract ArrayList<ScategoryTO> study1SC();
	public abstract ArrayList<SubjectTO> study2Sub();
	public abstract ArrayList<ViewSubjectTO> study2ViewSub(String seq);
	public abstract int insertComment(CommentTO cto);
	public abstract ArrayList<CommentTO> commentView(String seq);

	
	
	
}