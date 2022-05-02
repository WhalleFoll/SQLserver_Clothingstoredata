CREATE TRIGGER tid_order on t_order after insert
as
begin
if (select count(*) from t_goods,inserted where t_goods.id=inserted.id)=0
begin
print('商品不存在！')
rollback transaction 
end
end