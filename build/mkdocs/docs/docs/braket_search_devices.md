<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_search_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for devices using the specified filters

### Description

Searches for devices using the specified filters.

### Usage

    braket_search_devices(filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="braket_search_devices_:_filters">filters</code></td>
<td><p>[required] The filter values to use to search for a
device.</p></td>
</tr>
<tr class="even">
<td><code id="braket_search_devices_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code id="braket_search_devices_:_nextToken">nextToken</code></td>
<td><p>A token used for pagination of results returned in the response.
Use the token returned from the previous request continue results where
the previous request ended.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      devices = list(
        list(
          deviceArn = "string",
          deviceName = "string",
          deviceStatus = "ONLINE"|"OFFLINE"|"RETIRED",
          deviceType = "QPU"|"SIMULATOR",
          providerName = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$search_devices(
      filters = list(
        list(
          name = "string",
          values = list(
            "string"
          )
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
