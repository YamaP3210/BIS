D:
cd D:\Works\Developments\BIS\Projects\Backends

dotnet new gitignore
dotnet new grpc -o BIS.Server -n BIS.Server
dotnet new classlib -f netstandard2.1 -o BIS.Shared -n BIS.Shared

dotnet new sln -n BIS.Backends
dotnet sln add BIS.Server --in-root
dotnet sln add BIS.Shared --in-root

pushd BIS.Shared
dotnet add package MagicOnion.Abstractions
popd

pushd BIS.Server
dotnet remove package Grpc.AspNetCore
dotnet add package MagicOnion.Server
dotnet add reference ../BIS.Shared
popd
