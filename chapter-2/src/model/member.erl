-module(member, [Id, MemberName, MemberEmail, MemberPassword, MemberGender]).
-compile(export_all).

validation_tests() ->
	[
	
	{fun() -> length(MemberName) > 0 end, "Name is required!"},

	{fun() -> length(MemberName) =< 32 end, "Name length is too long!"},
	
	{fun() -> email_address:is_valid(MemberEmail) end, "Email Address is invalid!"},

	{fun() -> lists:member(MemberGender, ["M","F"]) end, "Wrong gender!"},

	{fun() -> length(MemberPassword) > 0 end, "Password is required!"},
	
	{fun() -> length(MemberPassword) >= 6 end, "Passwords must be at least 6 characters long!"}

	].
