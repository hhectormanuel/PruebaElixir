defmodule Empresa.Writer do
    alias Proyecto1.Empleado, as: Empleado

    import Jason
    ## Jason.enconde se podria poner encode()

    import Jason, only: [{:encode, 1}, {:decode, 1}]
    ## Jason.enconde se podria poner encode()
    

    defp to_map(%Empleado{nombre: n, posicion: p, sueldo: s}) do
        %{"nombre" => n, "posicion" => p, "sueldo" => s}
    end

    defp to_map(_x) do
        nil
    end

    def to_json(m) do
        {:ok, json_version} = Jason.encode(m)
        json_version
    end
    defp dump(str) do
        File.write("empleados.json", str)
    end

    def write(empledos) do
        empleados
        |>Enum.map(&to_map/1)
        |>Enum.filter(fn
            nil -> false
            _ -> true
        end)
        |> to_json
        |> dump
    end
end