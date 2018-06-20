﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="bd_catalogo")]
public partial class ConexionBDDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Definiciones de métodos de extensibilidad
  partial void OnCreated();
  partial void InsertFabricante(Fabricante instance);
  partial void UpdateFabricante(Fabricante instance);
  partial void DeleteFabricante(Fabricante instance);
  partial void InsertSmartphone(Smartphone instance);
  partial void UpdateSmartphone(Smartphone instance);
  partial void DeleteSmartphone(Smartphone instance);
  #endregion
	
	public ConexionBDDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["bd_catalogoConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public ConexionBDDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public ConexionBDDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public ConexionBDDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public ConexionBDDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<Fabricante> Fabricante
	{
		get
		{
			return this.GetTable<Fabricante>();
		}
	}
	
	public System.Data.Linq.Table<Smartphone> Smartphone
	{
		get
		{
			return this.GetTable<Smartphone>();
		}
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.vPhones")]
	public ISingleResult<vPhonesResult> vPhones()
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
		return ((ISingleResult<vPhonesResult>)(result.ReturnValue));
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Fabricante")]
public partial class Fabricante : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _id_Fabricante;
	
	private string _Descripcion;
	
	private EntitySet<Smartphone> _Smartphone;
	
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Onid_FabricanteChanging(int value);
    partial void Onid_FabricanteChanged();
    partial void OnDescripcionChanging(string value);
    partial void OnDescripcionChanged();
    #endregion
	
	public Fabricante()
	{
		this._Smartphone = new EntitySet<Smartphone>(new Action<Smartphone>(this.attach_Smartphone), new Action<Smartphone>(this.detach_Smartphone));
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_Fabricante", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int id_Fabricante
	{
		get
		{
			return this._id_Fabricante;
		}
		set
		{
			if ((this._id_Fabricante != value))
			{
				this.Onid_FabricanteChanging(value);
				this.SendPropertyChanging();
				this._id_Fabricante = value;
				this.SendPropertyChanged("id_Fabricante");
				this.Onid_FabricanteChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Descripcion", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string Descripcion
	{
		get
		{
			return this._Descripcion;
		}
		set
		{
			if ((this._Descripcion != value))
			{
				this.OnDescripcionChanging(value);
				this.SendPropertyChanging();
				this._Descripcion = value;
				this.SendPropertyChanged("Descripcion");
				this.OnDescripcionChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Fabricante_Smartphone", Storage="_Smartphone", ThisKey="id_Fabricante", OtherKey="id_Fabricante")]
	public EntitySet<Smartphone> Smartphone
	{
		get
		{
			return this._Smartphone;
		}
		set
		{
			this._Smartphone.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_Smartphone(Smartphone entity)
	{
		this.SendPropertyChanging();
		entity.Fabricante = this;
	}
	
	private void detach_Smartphone(Smartphone entity)
	{
		this.SendPropertyChanging();
		entity.Fabricante = null;
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Smartphone")]
public partial class Smartphone : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _id_Smartphone;
	
	private string _Nombre;
	
	private string _Imagen;
	
	private int _id_Fabricante;
	
	private EntityRef<Fabricante> _Fabricante;
	
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Onid_SmartphoneChanging(int value);
    partial void Onid_SmartphoneChanged();
    partial void OnNombreChanging(string value);
    partial void OnNombreChanged();
    partial void OnImagenChanging(string value);
    partial void OnImagenChanged();
    partial void Onid_FabricanteChanging(int value);
    partial void Onid_FabricanteChanged();
    #endregion
	
	public Smartphone()
	{
		this._Fabricante = default(EntityRef<Fabricante>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_Smartphone", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int id_Smartphone
	{
		get
		{
			return this._id_Smartphone;
		}
		set
		{
			if ((this._id_Smartphone != value))
			{
				this.Onid_SmartphoneChanging(value);
				this.SendPropertyChanging();
				this._id_Smartphone = value;
				this.SendPropertyChanged("id_Smartphone");
				this.Onid_SmartphoneChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Nombre", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string Nombre
	{
		get
		{
			return this._Nombre;
		}
		set
		{
			if ((this._Nombre != value))
			{
				this.OnNombreChanging(value);
				this.SendPropertyChanging();
				this._Nombre = value;
				this.SendPropertyChanged("Nombre");
				this.OnNombreChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Imagen", DbType="VarChar(250) NOT NULL", CanBeNull=false)]
	public string Imagen
	{
		get
		{
			return this._Imagen;
		}
		set
		{
			if ((this._Imagen != value))
			{
				this.OnImagenChanging(value);
				this.SendPropertyChanging();
				this._Imagen = value;
				this.SendPropertyChanged("Imagen");
				this.OnImagenChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_Fabricante", DbType="Int NOT NULL")]
	public int id_Fabricante
	{
		get
		{
			return this._id_Fabricante;
		}
		set
		{
			if ((this._id_Fabricante != value))
			{
				if (this._Fabricante.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.Onid_FabricanteChanging(value);
				this.SendPropertyChanging();
				this._id_Fabricante = value;
				this.SendPropertyChanged("id_Fabricante");
				this.Onid_FabricanteChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Fabricante_Smartphone", Storage="_Fabricante", ThisKey="id_Fabricante", OtherKey="id_Fabricante", IsForeignKey=true)]
	public Fabricante Fabricante
	{
		get
		{
			return this._Fabricante.Entity;
		}
		set
		{
			Fabricante previousValue = this._Fabricante.Entity;
			if (((previousValue != value) 
						|| (this._Fabricante.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._Fabricante.Entity = null;
					previousValue.Smartphone.Remove(this);
				}
				this._Fabricante.Entity = value;
				if ((value != null))
				{
					value.Smartphone.Add(this);
					this._id_Fabricante = value.id_Fabricante;
				}
				else
				{
					this._id_Fabricante = default(int);
				}
				this.SendPropertyChanged("Fabricante");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

public partial class vPhonesResult
{
	
	private int _id_Smartphone;
	
	private string _Nombre;
	
	private string _Imagen;
	
	private string _Fabricante;
	
	public vPhonesResult()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_Smartphone", DbType="Int NOT NULL")]
	public int id_Smartphone
	{
		get
		{
			return this._id_Smartphone;
		}
		set
		{
			if ((this._id_Smartphone != value))
			{
				this._id_Smartphone = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Nombre", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string Nombre
	{
		get
		{
			return this._Nombre;
		}
		set
		{
			if ((this._Nombre != value))
			{
				this._Nombre = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Imagen", DbType="VarChar(250) NOT NULL", CanBeNull=false)]
	public string Imagen
	{
		get
		{
			return this._Imagen;
		}
		set
		{
			if ((this._Imagen != value))
			{
				this._Imagen = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Fabricante", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string Fabricante
	{
		get
		{
			return this._Fabricante;
		}
		set
		{
			if ((this._Fabricante != value))
			{
				this._Fabricante = value;
			}
		}
	}
}
#pragma warning restore 1591
