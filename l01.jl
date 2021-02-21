### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 1d163e08-7385-11eb-13bd-5d973e2d00a3
begin
	using Images
	philip = load("images/philip.jpg")
end

# ╔═╡ f2ad7426-7384-11eb-1a1e-337985a098b8
url = "https://i.imgur.com/VGPeJ6s.jpg"

# ╔═╡ 07f55900-7385-11eb-3aa9-6b9174f3baa5
download(url, "images/philip.jpg")

# ╔═╡ 6e005998-7385-11eb-23ee-535a02ba023c
philip

# ╔═╡ 76784a9c-7385-11eb-0d3f-b5b984435fc9
size(philip)

# ╔═╡ 7dc3a634-7385-11eb-0e5f-095a2e86d6d7
typeof(philip)

# ╔═╡ 8e30ce3c-7385-11eb-000f-6d2c0217eaa3
RGB(0.9,0.8,0.1)

# ╔═╡ a51b15da-7385-11eb-2409-892a2bd90d27
# Get 1 pixel
philip[900, 400]

# ╔═╡ beef3400-7385-11eb-26a2-a7b4c5c72fd4
begin
	(h, w) = size(philip)
	head = philip[ (h ÷ 2) : h, (w ÷ 10): (9w ÷ 10)]
end

# ╔═╡ 4c70eac6-7386-11eb-1e1f-7ba76c9da42d
[
	head reverse(head, dims=2)
	reverse(head, dims=1) reverse(reverse(head, dims=1), dims=2)
]

# ╔═╡ a4f6b572-7386-11eb-2af0-9bde9a4b1a84
new_phil = copy(head)

# ╔═╡ d711e784-7386-11eb-0731-df8319902ce7
function redfy(color)
	return RGB(color.r, 0, 0)
end

# ╔═╡ 3a0e00e2-7388-11eb-38fb-69d0cd123cf3
redfy.(new_phil)

# ╔═╡ a2795a00-7388-11eb-3803-4b0039a21b7d
decimate(image, ratio=5) = image[1:ratio:end, 1:ratio:end]

# ╔═╡ aca658f0-7388-11eb-1149-6f6ce941ca42
poor_phil = decimate(head, 5)

# ╔═╡ Cell order:
# ╠═f2ad7426-7384-11eb-1a1e-337985a098b8
# ╠═07f55900-7385-11eb-3aa9-6b9174f3baa5
# ╠═1d163e08-7385-11eb-13bd-5d973e2d00a3
# ╠═6e005998-7385-11eb-23ee-535a02ba023c
# ╠═76784a9c-7385-11eb-0d3f-b5b984435fc9
# ╠═7dc3a634-7385-11eb-0e5f-095a2e86d6d7
# ╠═8e30ce3c-7385-11eb-000f-6d2c0217eaa3
# ╠═a51b15da-7385-11eb-2409-892a2bd90d27
# ╠═beef3400-7385-11eb-26a2-a7b4c5c72fd4
# ╠═4c70eac6-7386-11eb-1e1f-7ba76c9da42d
# ╠═a4f6b572-7386-11eb-2af0-9bde9a4b1a84
# ╠═d711e784-7386-11eb-0731-df8319902ce7
# ╠═3a0e00e2-7388-11eb-38fb-69d0cd123cf3
# ╠═a2795a00-7388-11eb-3803-4b0039a21b7d
# ╠═aca658f0-7388-11eb-1149-6f6ce941ca42
