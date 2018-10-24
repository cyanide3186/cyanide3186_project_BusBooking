function checkqboardWrite() {
	if(document.qboardWriteForm.subject.value=="") {
		
		alert("제목을 입력하세요.");
		document.qboardWriteForm.subject.focus();
	}else if(document.qboardWriteForm.content.value=="") {
		alert("내용을 입력하세요.");
		document.qboardWriteForm.content.focus();
	}else {
		document.qboardWriteForm.submit();
	}
	
}