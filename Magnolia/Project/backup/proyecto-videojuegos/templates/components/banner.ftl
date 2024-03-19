[#assign asset = damfn.getAsset(content.imagen)!]
<section class="jumbotron text-center" style="background-image: url('${asset.link}'); background-size: cover; background-position: center;">
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
        <div class="d-flex justify-content-center align-items-center h-100">
            <div class="text-white">
                <h1 class="mb-3 mt-5">
                    ${cmsfn.decode(content).headline!}
                </h1>
                <h4 class="mb-5">
                    ${cmsfn.decode(content).text!}
                </h4>
            </div>
        </div>
    </div>
</section>