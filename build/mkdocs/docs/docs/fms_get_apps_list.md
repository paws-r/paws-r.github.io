<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_apps_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified Firewall Manager applications list

### Description

Returns information about the specified Firewall Manager applications
list.

### Usage

    fms_get_apps_list(ListId, DefaultList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_get_apps_list_:_ListId">ListId</code></td>
<td><p>[required] The ID of the Firewall Manager applications list that
you want the details for.</p></td>
</tr>
<tr class="even">
<td><code id="fms_get_apps_list_:_DefaultList">DefaultList</code></td>
<td><p>Specifies whether the list to retrieve is a default list owned by
Firewall Manager.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppsList = list(
        ListId = "string",
        ListName = "string",
        ListUpdateToken = "string",
        CreateTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        AppsList = list(
          list(
            AppName = "string",
            Protocol = "string",
            Port = 123
          )
        ),
        PreviousAppsList = list(
          list(
            list(
              AppName = "string",
              Protocol = "string",
              Port = 123
            )
          )
        )
      ),
      AppsListArn = "string"
    )

### Request syntax

    svc$get_apps_list(
      ListId = "string",
      DefaultList = TRUE|FALSE
    )
