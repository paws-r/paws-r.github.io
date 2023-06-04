<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_list_controls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of controls from Audit Manager

### Description

Returns a list of controls from Audit Manager.

### Usage

    auditmanager_list_controls(controlType, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_list_controls_:_controlType">controlType</code></td>
<td><p>[required] The type of control, such as a standard control or a
custom control.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_list_controls_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_list_controls_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      controlMetadataList = list(
        list(
          arn = "string",
          id = "string",
          name = "string",
          controlSources = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_controls(
      controlType = "Standard"|"Custom",
      nextToken = "string",
      maxResults = 123
    )
