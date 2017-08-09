defmodule Discuss.TopicController do
    use Discuss.Web, :controller

    alias Discuss.Topic  # shorten Discuss.Topic to Topic

    def new(conn, params) do
        struct = %Topic{}
        params = %{}
        changeset = Topic.changeset(struct, params)

        render(conn, "new.html", changeset: changeset,)
    end

    def create(conn, _params) do
        %{"topic" => topic} = params
    end
end