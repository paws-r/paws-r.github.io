<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_restore_event_data_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a deleted event data store specified by EventDataStore, which accepts an event data store ARN

### Description

Restores a deleted event data store specified by `EventDataStore`, which
accepts an event data store ARN. You can only restore a deleted event
data store within the seven-day wait period after deletion. Restoring an
event data store can take several minutes, depending on the size of the
event data store.

### Usage

    cloudtrail_restore_event_data_store(EventDataStore)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_restore_event_data_store_:_EventDataStore">EventDataStore</code></td>
<td><p>[required] The ARN (or the ID suffix of the ARN) of the event
data store that you want to restore.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventDataStoreArn = "string",
      Name = "string",
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
      TerminationProtectionEnabled = TRUE|FALSE,
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      UpdatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      KmsKeyId = "string"
    )

### Request syntax

    svc$restore_event_data_store(
      EventDataStore = "string"
    )
