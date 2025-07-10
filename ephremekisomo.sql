create database tpgestionvente

create table tClient 

(
	id_Client
	int primary key identity (1,1),
	nom nvarchar (100),
	Adresse nvarchar (100),
	contact nvarchar (15)

)go

create table tCategorisation 
(
	id_categorisation int primary key identity (1,1),
	Designation nvarchar (100)
	

)go

create table tClasse 
(
	id_Classe int primary key  identity (1,1),
	Designations nvarchar (100),
	Prix decimal (30,2)

)go

create table tChambre
(
	Id_Chambre int primary key identity (1,1),
	numero int ,
	contact nvarchar (15),
	refClasse int foreign key references tClasse(id_Classe)


)go

create table tReservation
(

	id_Reservation int primary key identity (1,1),
	refClient int foreign key references tClient(id_Client),
	refChambre int foreign key references tChambre(id_Chambre),
	DateEntre date ,
	DateSortie date 
)go

create procedure saveclient 

(
  @id_Client int,
  @nom nvarchar(100),
  @adresse nvarchar(100),
  @contact nvarchar(15)

)as 
begin 
if @id_Client in (select id_Client from tClient)
begin 
update tClient set nom= @nom,adresse=@adresse,
contact=@contact where id_Client=@id_Client
end

else
begin 

insert into tClient(nom,Adresse,contact) values 
   (@nom,@adresse,@contact)

   end
   end
   go


   create procedure saveCategorisations  
   (
		@id_Categorisation int,
		@Designation nvarchar (100)
   
   )as 
   begin 

   if @id_Categorisation in (select id_Categorisation from tCategorisation )
   begin 
   update tCategorisation set Designation = @Designation where id_categorisation = @id_Categorisation

   end
   else 
   insert into tCategorisation (Designation) values (@Designation)

   end
   

  go

  create procedure saveClasses
  
  (

	@id_Classe int ,
	@Designations nvarchar (100),
	@Prix decimal (30,2)
  
  )as 
  begin 

  if @id_Classe in (select id_Classe from tClasse)
  begin update tClasse set Designations = @Designations, Prix = @Prix where id_Classe= @id_Classe

  end
  else 
  insert into tClasse (Designations,Prix) values (@Designations,@Prix)
  end
  

  go


  create procedure saveChambres 
  
  (
	@id_Chambre int,
	@numero int ,
	@contact nvarchar (15),
    @refClasse int
  )as 

  begin 
 if @id_Chambre  in (select id_Chambre from tChambre)

	begin update tChambre set numero =@numero, contact =@contact, refClasse=@refClasse where Id_Chambre=@id_Chambre

	end
	else 
	insert into tChambre(numero, contact,refClasse) values (@numero,@contact,@refClasse)
	end
	

	go

create procedure saveReservations

(
    @id_Reservation int, 
	@refClient int, 
	@refChambre int, 
	@DateEntre date ,
	@DateSortie date 

)as 

begin 

if @id_Reservation  in (select id_Reservation from tReservation)
begin 
update tReservation set refClient =@refClient ,refChambre = @refChambre , DateEntre=@DateEntre, DateSortie= @DateSortie where id_Reservation = @id_Reservation

end
else 

insert into tReservation(refClient,refChambre,DateEntre,DateSortie) values (@refClient,@refChambre,@DateEntre,@DateSortie)

end 

go

