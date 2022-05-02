CREATE TRIGGER tor_order on t_order after insert
as
begin
declare @orid varchar(20)
declare @orvic varchar(50)
select @orid=id from inserted
select @orvic=vic from inserted
if((select vic from inserted where id=@orid)= 'ÊÇ')
begin
update t_goods set age=age+1 where id=@orid
end
end
