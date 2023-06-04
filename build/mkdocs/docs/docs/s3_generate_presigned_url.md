<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_generate_presigned_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generate a presigned url given a client, its method, and arguments

### Description

Generate a presigned url given a client, its method, and arguments

### Usage

    s3_generate_presigned_url(client_method, params=list(), expires_in=3600,
    http_method = NULL)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_generate_presigned_url_:_client_method">client_method</code></td>
<td><p>(character): The client method to presign for</p></td>
</tr>
<tr class="even">
<td><code id="s3_generate_presigned_url_:_params">params</code></td>
<td><p>(list): The parameters normally passed to
<code>client_method</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_generate_presigned_url_:_expires_in">expires_in</code></td>
<td><p>(numeric): The number of seconds the presigned url is valid for.
By default it expires in an hour (3600 seconds)</p></td>
</tr>
<tr class="even">
<td><code
id="s3_generate_presigned_url_:_http_method">http_method</code></td>
<td><p>(character) The http method to use on the generated url. By
default, the http method is whatever is used in the method's
model.</p></td>
</tr>
</tbody>
</table>

### Value

The presigned url character

### Request syntax

    svc$generate_signed_url(
      client_method = "string",
      params = "list",
      expires_in = "numeric",
      http_method = "string"
    )

### Examples

    ## Not run: 
    # The following example generates a presigned URL that you
    # can give to others so that they can retrieve an object from an S3 bucket.
    svc$generate_signed_url(
      client_method = "get_object",
      Params = list(Bucket = "BUCKET_NAME", Key = "OBJECT_KEY"),
      ExpiresIn = 3600
    )

    ## End(Not run)
