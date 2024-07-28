defmodule WorkOS.UserManagement.OrganizationMembership do
  @moduledoc """
  WorkOS Organization Membership struct.
  """

  @behaviour WorkOS.Castable

  @type t() :: %__MODULE__{
          id: String.t(),
          user_id: String.t(),
          organization_id: String.t(),
          updated_at: String.t(),
          created_at: String.t(),
          role: %{
            slug: String.t(),
          }
        }

  @enforce_keys [
    :id,
    :user_id,
    :organization_id,
    :updated_at,
    :created_at,
    :role
  ]
  defstruct [
    :id,
    :user_id,
    :organization_id,
    :updated_at,
    :created_at,
    :role
  ]

  @impl true
  def cast(map) do
    %__MODULE__{
      id: map["id"],
      user_id: map["user_id"],
      organization_id: map["organization_id"],
      updated_at: map["updated_at"],
      created_at: map["created_at"],
      role: map["role"]
    }
  end
end
