package test.dao;

import java.util.List;

import test.model.Category;
import test.model.Feedback;

public interface FeedbackDao 
{
	public boolean addFeedback(Feedback feedback);
	List<Feedback> getFeedbackList();
	public boolean deleteFeedback(int fid);
	public Feedback getFeedback(int fid);

}
