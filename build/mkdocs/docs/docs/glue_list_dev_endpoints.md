<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_dev_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the names of all DevEndpoint resources in this Amazon Web Services account, or the resources with the specified tag

### Description

Retrieves the names of all `DevEndpoint` resources in this Amazon Web
Services account, or the resources with the specified tag. This
operation allows you to see which resources are available in your
account, and their names.

This operation takes the optional `Tags` field, which you can use as a
filter on the response so that tagged resources can be retrieved as a
group. If you choose to use tags filtering, only resources with the tag
are retrieved.

### Usage

    glue_list_dev_endpoints(NextToken, MaxResults, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_list_dev_endpoints_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation request.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_list_dev_endpoints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of a list to return.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_list_dev_endpoints_:_Tags">Tags</code></td>
<td><p>Specifies to return only these tagged resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DevEndpointNames = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_dev_endpoints(
      NextToken = "string",
      MaxResults = 123,
      Tags = list(
        "string"
      )
    )
