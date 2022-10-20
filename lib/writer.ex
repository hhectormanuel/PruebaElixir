defmodule Empresa.Writer do
    defp to_map(%{nombre: n, posicion: p, sueldo: s}) do
        %{"nombre" => n, "posicion" => p, "sueldo" => s}
    end

    defp to_map(_x) do
        nil
    end

    def pto_json(m) do
        {:ok, json_version} = Jason.encode(m)
        json_version
    end
    defp dump(str) do
        File.write("empleados.txt", str)
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