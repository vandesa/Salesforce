global class Att_Img_To_PDF 
{
    static webservice void Att_Img_To_PDF(String Title,Id ImgId,Id pId)
    {
	            PageReference p = Page.Attach_Img_2_PDF;
				p.getParameters().put('Fileid',ImgId);
                Blob pdfBlob = p.getContent();
//                pdfBlob = Blob.valueOf('Some Text');
                Attachment attPdf = new Attachment();            
                attPdf.ParentId = pId;
                attPdf.Name = Title.left(Title.length()-4)+'.pdf';
                attPdf.Body = pdfBlob;
                insert attPdf;
    }
    
}