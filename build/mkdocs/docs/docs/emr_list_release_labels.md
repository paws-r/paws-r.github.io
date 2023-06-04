<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_list_release_labels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves release labels of Amazon EMR services in the Region where the API is called

### Description

Retrieves release labels of Amazon EMR services in the Region where the
API is called.

### Usage

    emr_list_release_labels(Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_list_release_labels_:_Filters">Filters</code></td>
<td><p>Filters the results of the request. <code>Prefix</code> specifies
the prefix of release labels to return. <code>Application</code>
specifies the application (with/without version) of release labels to
return.</p></td>
</tr>
<tr class="even">
<td><code id="emr_list_release_labels_:_NextToken">NextToken</code></td>
<td><p>Specifies the next page of results. If <code>NextToken</code> is
not specified, which is usually the case for the first request of
ListReleaseLabels, the first page of results are determined by other
filtering parameters or by the latest version. The
<code>list_release_labels</code> request fails if the identity (Amazon
Web Services account ID) and all filtering parameters are different from
the original request, or if the <code>NextToken</code> is expired or
tampered with.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_list_release_labels_:_MaxResults">MaxResults</code></td>
<td><p>Defines the maximum number of release labels to return in a
single response. The default is <code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReleaseLabels = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_release_labels(
      Filters = list(
        Prefix = "string",
        Application = "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
