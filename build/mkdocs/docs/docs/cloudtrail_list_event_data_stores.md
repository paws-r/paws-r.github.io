<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_list_event_data_stores</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about all event data stores in the account, in the current region

### Description

Returns information about all event data stores in the account, in the
current region.

### Usage

    cloudtrail_list_event_data_stores(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_list_event_data_stores_:_NextToken">NextToken</code></td>
<td><p>A token you can use to get the next page of event data store
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_list_event_data_stores_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of event data stores to display on a single
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventDataStores = list(
        list(
          EventDataStoreArn = "string",
          Name = "string",
          TerminationProtectionEnabled = TRUE|FALSE,
          Status = "CREATED"|"ENABLED"|"PENDING_DELETION",
          AdvancedEventSelectors = list(
            list(
              Name = "string",
              FieldSelectors = list(
                list(
                  Field = "string",
                  Equals = list(
                    "string"
                  ),
                  StartsWith = list(
                    "string"
                  ),
                  EndsWith = list(
                    "string"
                  ),
                  NotEquals = list(
                    "string"
                  ),
                  NotStartsWith = list(
                    "string"
                  ),
                  NotEndsWith = list(
                    "string"
                  )
                )
              )
            )
          ),
          MultiRegionEnabled = TRUE|FALSE,
          OrganizationEnabled = TRUE|FALSE,
          RetentionPeriod = 123,
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_event_data_stores(
      NextToken = "string",
      MaxResults = 123
    )
