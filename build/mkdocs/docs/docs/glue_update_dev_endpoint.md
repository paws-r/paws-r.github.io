<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_dev_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a specified development endpoint

### Description

Updates a specified development endpoint.

### Usage

    glue_update_dev_endpoint(EndpointName, PublicKey, AddPublicKeys,
      DeletePublicKeys, CustomLibraries, UpdateEtlLibraries, DeleteArguments,
      AddArguments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_update_dev_endpoint_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name of the <code>DevEndpoint</code> to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_dev_endpoint_:_PublicKey">PublicKey</code></td>
<td><p>The public key for the <code>DevEndpoint</code> to use.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_dev_endpoint_:_AddPublicKeys">AddPublicKeys</code></td>
<td><p>The list of public keys for the <code>DevEndpoint</code> to
use.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_dev_endpoint_:_DeletePublicKeys">DeletePublicKeys</code></td>
<td><p>The list of public keys to be deleted from the
<code>DevEndpoint</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_dev_endpoint_:_CustomLibraries">CustomLibraries</code></td>
<td><p>Custom Python or Java libraries to be loaded in the
<code>DevEndpoint</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_dev_endpoint_:_UpdateEtlLibraries">UpdateEtlLibraries</code></td>
<td><p><code>True</code> if the list of custom libraries to be loaded in
the development endpoint needs to be updated, or <code>False</code> if
otherwise.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_dev_endpoint_:_DeleteArguments">DeleteArguments</code></td>
<td><p>The list of argument keys to be deleted from the map of arguments
used to configure the <code>DevEndpoint</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_dev_endpoint_:_AddArguments">AddArguments</code></td>
<td><p>The map of arguments to add the map of arguments used to
configure the <code>DevEndpoint</code>.</p>
<p>Valid arguments are:</p>
<ul>
<li><p><code>"--enable-glue-datacatalog": ""</code></p></li>
</ul>
<p>You can specify a version of Python support for development endpoints
by using the <code>Arguments</code> parameter in the
<code>create_dev_endpoint</code> or <code>update_dev_endpoint</code>
APIs. If no arguments are provided, the version defaults to Python
2.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_dev_endpoint(
      EndpointName = "string",
      PublicKey = "string",
      AddPublicKeys = list(
        "string"
      ),
      DeletePublicKeys = list(
        "string"
      ),
      CustomLibraries = list(
        ExtraPythonLibsS3Path = "string",
        ExtraJarsS3Path = "string"
      ),
      UpdateEtlLibraries = TRUE|FALSE,
      DeleteArguments = list(
        "string"
      ),
      AddArguments = list(
        "string"
      )
    )
