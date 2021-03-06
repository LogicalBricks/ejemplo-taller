require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RuteadorsController do

  # This should return the minimal set of attributes required to create a valid
  # Ruteador. As you add validations to Ruteador, be sure to
  # adjust the attrioutes here as well.
  #prueba valida
  let(:valid_attributes) { { "usuario" => "MyString" , "password" => "hola123434", "puerto" =>1223, "nombre" => "algunnombre", "observaciones"  => "texto muy grande  texto muy grande  texto muy grande  texto muy grande  texto muy grande  texto muy grande   " , "serie" => "12131GAGA15"  } }

# Prueba con errores
# let(:valid_attributes) { { "usuario" => "MyString" , "password" => "hola123434", "puerto" =>"2a3", "nombre" => "algunnombre", "observaciones"  => "texto muy grande  texto muy grande  texto muy grande  texto muy grande  texto muy grande  texto muy grande   "   } }


  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RuteadorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all ruteadors as @ruteadors" do
      ruteador = Ruteador.create! valid_attributes
      get :index, {}, valid_session
      assigns(:ruteadors).should eq([ruteador])
    end
  end

  describe "GET show" do
    it "assigns the requested ruteador as @ruteador" do
      ruteador = Ruteador.create! valid_attributes
      get :show, {:id => ruteador.to_param}, valid_session
      assigns(:ruteador).should eq(ruteador)
    end
  end

  describe "GET new" do
    it "assigns a new ruteador as @ruteador" do
      get :new, {}, valid_session
      assigns(:ruteador).should be_a_new(Ruteador)
    end
  end

  describe "GET edit" do
    it "assigns the requested ruteador as @ruteador" do
      ruteador = Ruteador.create! valid_attributes
      get :edit, {:id => ruteador.to_param}, valid_session
      assigns(:ruteador).should eq(ruteador)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ruteador" do
        expect {
          post :create, {:ruteador => valid_attributes}, valid_session
        }.to change(Ruteador, :count).by(1)
      end

      it "assigns a newly created ruteador as @ruteador" do
        post :create, {:ruteador => valid_attributes}, valid_session
        assigns(:ruteador).should be_a(Ruteador)
        assigns(:ruteador).should be_persisted
      end

      it "redirects to the created ruteador" do
        post :create, {:ruteador => valid_attributes}, valid_session
        response.should redirect_to(Ruteador.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ruteador as @ruteador" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ruteador.any_instance.stub(:save).and_return(false)
        post :create, {:ruteador => { "usuario" => "invalid value" }}, valid_session
        assigns(:ruteador).should be_a_new(Ruteador)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ruteador.any_instance.stub(:save).and_return(false)
        post :create, {:ruteador => { "usuario" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ruteador" do
        ruteador = Ruteador.create! valid_attributes
        # Assuming there are no other ruteadors in the database, this
        # specifies that the Ruteador created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ruteador.any_instance.should_receive(:update).with({ "usuario" => "MyString" })
        put :update, {:id => ruteador.to_param, :ruteador => { "usuario" => "MyString" }}, valid_session
      end

      it "assigns the requested ruteador as @ruteador" do
        ruteador = Ruteador.create! valid_attributes
        put :update, {:id => ruteador.to_param, :ruteador => valid_attributes}, valid_session
        assigns(:ruteador).should eq(ruteador)
      end

      it "redirects to the ruteador" do
        ruteador = Ruteador.create! valid_attributes
        put :update, {:id => ruteador.to_param, :ruteador => valid_attributes}, valid_session
        response.should redirect_to(ruteador)
      end
    end

    describe "with invalid params" do
      it "assigns the ruteador as @ruteador" do
        ruteador = Ruteador.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ruteador.any_instance.stub(:save).and_return(false)
        put :update, {:id => ruteador.to_param, :ruteador => { "usuario" => "invalid value" }}, valid_session
        assigns(:ruteador).should eq(ruteador)
      end

      it "re-renders the 'edit' template" do
        ruteador = Ruteador.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ruteador.any_instance.stub(:save).and_return(false)
        put :update, {:id => ruteador.to_param, :ruteador => { "usuario" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ruteador" do
      ruteador = Ruteador.create! valid_attributes
      expect {
        delete :destroy, {:id => ruteador.to_param}, valid_session
      }.to change(Ruteador, :count).by(-1)
    end

    it "redirects to the ruteadors list" do
      ruteador = Ruteador.create! valid_attributes
      delete :destroy, {:id => ruteador.to_param}, valid_session
      response.should redirect_to(ruteadors_url)
    end
  end

end
