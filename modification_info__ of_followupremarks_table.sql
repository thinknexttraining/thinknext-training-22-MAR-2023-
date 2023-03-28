select * from followupremarks
update followupremarks set Status='clear' where SerialNo=3
alter trigger tri_for_update_n_insert_values_in_followupremarks on followupremarks instead of update
as begin
declare @Session varchar(max),@EnquiryNo varchar(max),@Name varchar(max),@CollegeName varchar(max), @Course varchar(max), @MobileNo varchar(max),@EmailID varchar(max),@DateEntry varchar(max),@FollowupRemarks varchar(max),@NextDateEntry varchar(max),@Status varchar(30)
select @Session=Session,@EnquiryNo=EnquiryNo, @Name=Name,@CollegeName=CollegeName,@Course=Course,@MobileNo=MobileNo,@EmailID=EmailID,@DateEntry=DateEntry,@FollowupRemarks=FollowupRemarks,@NextDateEntry=NextDateEntry ,@Status=Status from inserted insert into followupremarks(Session,EnquiryNo,Name,CollegeName, 
Course, MobileNo,EmailID,DateEntry,
FollowupRemarks,NextDateEntry,Status,Date) 
values(@Session,@EnquiryNo,@Name,@CollegeName, @Course, @MobileNo,@EmailID,
@DateEntry,@FollowupRemarks,@NextDateEntry,@status,getdate())
end

