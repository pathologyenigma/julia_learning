(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using Server
push!(Base.modules_warned_for, Base.PkgId(Server))
Server.main()
