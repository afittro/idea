RailsAdmin.config do |config|

  config.show_gravatar = true
  config.total_columns_width = 1000
  config.audit_with :paper_trail, 'User', 'PaperTrail::Version'

  config.authorize_with :cancancan do
    unless current_user.admin?
      redirect_to main_app.root_path
      flash[:error] = "You are not an admin"
    end
  end

  PAPER_TRAIL_AUDIT_MODEL = ['Audit', 'Client', 'DocumentType', 'Employee', 'EvCase', 'List', 'Mistake', 'Revision', 'Setting', 'User', 'Verification']

  config.actions do
    dashboard
    index
    new
    export
    bulk_delete
    show
    clone
    edit
    delete
    show_in_app
    import
    toggle
    select
    charts
    history_index do
      only PAPER_TRAIL_AUDIT_MODEL
    end
    history_show do
      only PAPER_TRAIL_AUDIT_MODEL
    end
  end
  config.model Client do
    list do
      field :id do
        column_width 30
      end
      field :name do
        column_width 80
      end
      field :full_name do
        column_width 150
      end
      field :alternate_names do
        column_width 150
      end
      field :active, :toggle do
        column_width 50
      end
      field :created_at do
        column_width 125
      end
      field :updated_at do
        column_width 125
      end
    end
  end
  config.model DocumentType do
    label 'Document Types'
    list do
      field :id do
        column_width 30
      end
      field :code do
        column_width 40
      end
      field :name do
        column_width 100
      end
      field :abbr do
        column_width 80
      end
      field :active, :toggle do
        column_width 50
      end
      field :ev, :toggle do
        column_width 50
      end
      field :rcpt, :toggle do
        column_width 50
      end
      field :created_at do
        column_width 125
      end
      field :updated_at do
        column_width 125
      end
    end
  end
  config.model EvCase do
    label 'EV Cases'
  end
  config.model Revision do
    list do
      field :id do
        column_width 30
      end
      field :starts_on do
        column_width 100
      end
      field :expires_on do
        column_width 100
      end
      field :active, :toggle do
        column_width 100
      end
      field :notes do
        column_width 200
      end
      field :created_at do
        column_width 125
      end
      field :updated_at do
        column_width 125
      end
    end
  end
  config.model Mistake do
    list do
      field :id do
        column_width 30
      end
      field :abbr do
        column_width 50
      end
      field :text do
        column_width 100
      end
      field :active, :toggle do
        column_width 50
      end
      field :correctable do
        column_width 50
      end
      field :area do
        column_width 50
      end
      field :subarea do
        column_width 100
      end
      field :sort do
        column_width 40
      end
      field :responsible do
        column_width 80
      end
      field :severity do
        column_width 50
      end
      field :description do
        column_width 50
      end
      field :created_at do
        column_width 50
      end
      field :updated_at do
        column_width 50
      end
    end
  end
  config.model Setting do
    list do
      field :id do
        column_width 30
      end
      field :entry do
        column_width 150
      end
      field :setting_type do
        column_width 80
      end
      field :value_boolean, :toggle do
        column_width 100
      end
      field :value_date do
        column_width 100
      end
      field :value_number do
        column_width 100
      end
      field :value_text do
        column_width 100
      end
      field :created_at do
        column_width 125
      end
      field :updated_at do
        column_width 125
      end
    end
  end
  config.model User do
    list do
      field :id do
        column_width 30
      end
      field :initials do
        column_width 78
      end
      field :full_name do
        column_width 150
      end
      field :user_name do
        column_width 100
      end
      field :role do
        column_width 100
      end
      field :active, :toggle do
        column_width 100
      end
      field :created_at do
        column_width 125
      end
      field :updated_at do
        column_width 125
      end
    end
  end

end
