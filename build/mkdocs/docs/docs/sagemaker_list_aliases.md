<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the aliases of a specified image or image version

### Description

Lists the aliases of a specified image or image version.

### Usage

    sagemaker_list_aliases(ImageName, Alias, Version, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_aliases_:_ImageName">ImageName</code></td>
<td><p>[required] The name of the image.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_aliases_:_Alias">Alias</code></td>
<td><p>The alias of the image version.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_aliases_:_Version">Version</code></td>
<td><p>The version of the image. If image version is not specified, the
aliases of all versions of the image are listed.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_aliases_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of aliases to return.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_aliases_:_NextToken">NextToken</code></td>
<td><p>If the previous call to <code>list_aliases</code> didn't return
the full set of aliases, the call returns a token for retrieving the
next set of aliases.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SageMakerImageVersionAliases = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_aliases(
      ImageName = "string",
      Alias = "string",
      Version = 123,
      MaxResults = 123,
      NextToken = "string"
    )
