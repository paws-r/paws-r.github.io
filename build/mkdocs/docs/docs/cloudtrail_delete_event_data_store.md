<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_delete_event_data_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the event data store specified by EventDataStore, which accepts an event data store ARN

### Description

Disables the event data store specified by `EventDataStore`, which
accepts an event data store ARN. After you run
`delete_event_data_store`, the event data store enters a
`PENDING_DELETION` state, and is automatically deleted after a wait
period of seven days. `TerminationProtectionEnabled` must be set to
`False` on the event data store; this operation cannot work if
`TerminationProtectionEnabled` is `True`.

After you run `delete_event_data_store` on an event data store, you
cannot run `list_queries`, `describe_query`, or `get_query_results` on
queries that are using an event data store in a `PENDING_DELETION`
state. An event data store in the `PENDING_DELETION` state does not
incur costs.

### Usage

    cloudtrail_delete_event_data_store(EventDataStore)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_delete_event_data_store_:_EventDataStore">EventDataStore</code></td>
<td><p>[required] The ARN (or the ID suffix of the ARN) of the event
data store to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_event_data_store(
      EventDataStore = "string"
    )
