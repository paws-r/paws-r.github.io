<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_list_rules_packages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all available Amazon Inspector rules packages

### Description

Lists all available Amazon Inspector rules packages.

### Usage

    inspector_list_rules_packages(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_list_rules_packages_:_nextToken">nextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the
<strong>ListRulesPackages</strong> action. Subsequent calls to the
action fill <strong>nextToken</strong> in the request with the value of
<strong>NextToken</strong> from the previous response to continue
listing data.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_list_rules_packages_:_maxResults">maxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items you want in the response. The default value is 10. The maximum
value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      rulesPackageArns = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_rules_packages(
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # Lists all available Amazon Inspector rules packages.
    svc$list_rules_packages(
      maxResults = 123L
    )

    ## End(Not run)
