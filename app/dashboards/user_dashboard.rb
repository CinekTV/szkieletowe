require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    check_admin: Field::Boolean,
    email: Field::String,
    encrypted_password: Field::String,
    imie: Field::String,
    nazwisko: Field::String,
    nick: Field::String,
    remember_created_at: Field::DateTime,
    reset_password_sent_at: Field::DateTime,
    reset_password_token: Field::String,
    user_id: Field::Number,
    wiek: Field::Number,
    pomp_dzien: Field::Number,
    pomp_tydzien: Field::Number,
    pomp_miesiac: Field::Number,
    pompki_kiedy: Field::DateTime,
    pomp_all: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    check_admin
    email
    encrypted_password
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    check_admin
    email
    encrypted_password
    imie
    nazwisko
    nick
    remember_created_at
    reset_password_sent_at
    reset_password_token
    user_id
    wiek
    created_at
    updated_at
    pomp_dzien
    pomp_tydzien
    pomp_miesiac
    pompki_kiedy
    pomp_all
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    check_admin
    email
    encrypted_password
    imie
    nazwisko
    nick
    remember_created_at
    reset_password_sent_at
    reset_password_token
    user_id
    wiek
    pomp_dzien
    pomp_tydzien
    pomp_miesiac
    pompki_kiedy
    pomp_all
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
