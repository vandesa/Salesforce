trigger Generate_PDF_From_Img on Attachment (after insert) 
{
	String Title;
	Id pId;
	
	for(Attachment att: Trigger.new)
	{
		Title=att.Name;
		pId=att.ParentId;
		if (Title.right(3)=='jpg')
		{
//			List<Account> Act = [Select id from account where id=:pId];
//			if (Act.size()>0)
//			{
				AccountImgAttachToPDF.addPDFAttach(userInfo.getSessionId(),Title,att.id,pId);
//			}		
		}
	}
}