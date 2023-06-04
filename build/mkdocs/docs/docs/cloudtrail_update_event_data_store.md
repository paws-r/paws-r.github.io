<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_update_event_data_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an event data store

### Description

Updates an event data store. The required `EventDataStore` value is an
ARN or the ID portion of the ARN. Other parameters are optional, but at
least one optional parameter must be specified, or CloudTrail throws an
error. `RetentionPeriod` is in days, and valid values are integers
between 90 and 2557. By default, `TerminationProtection` is enabled.

For event data stores for CloudTrail events, `AdvancedEventSelectors`
includes or excludes management and data events in your event data
store. For more information about `AdvancedEventSelectors`, see
PutEventSelectorsRequest$AdvancedEventSelectors.

For event data stores for Config configuration items, Audit Manager
evidence, or non-Amazon Web Services events, `AdvancedEventSelectors`
includes events of that type in your event data store.

### Usage

    cloudtrail_update_event_data_store(EventDataStore, Name,
      AdvancedEventSelectors, MultiRegionEnabled, OrganizationEnabled,
      RetentionPeriod, TerminationProtectionEnabled, KmsKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_update_event_data_store_:_EventDataStore">EventDataStore</code></td>
<td><p>[required] The ARN (or the ID suffix of the ARN) of the event
data store that you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_update_event_data_store_:_Name">Name</code></td>
<td><p>The event data store name.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_update_event_data_store_:_AdvancedEventSelectors">AdvancedEventSelectors</code></td>
<td><p>The advanced event selectors used to select events for the event
data store. You can configure up to five advanced event selectors for
each event data store.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_update_event_data_store_:_MultiRegionEnabled">MultiRegionEnabled</code></td>
<td><p>Specifies whether an event data store collects events from all
regions, or only from the region in which it was created.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_update_event_data_store_:_OrganizationEnabled">OrganizationEnabled</code></td>
<td><p>Specifies whether an event data store collects events logged for
an organization in Organizations.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_update_event_data_store_:_RetentionPeriod">RetentionPeriod</code></td>
<td><p>The retention period, in days.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_update_event_data_store_:_TerminationProtectionEnabled">TerminationProtectionEnabled</code></td>
<td><p>Indicates that termination protection is enabled and the event
data store cannot be automatically deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_update_event_data_store_:_KmsKeyId">KmsKeyId</code></td>
<td><p>Specifies the KMS key ID to use to encrypt the events delivered
by CloudTrail. The value can be an alias name prefixed by <code
style="white-space: pre;">⁠alias/⁠</code>, a fully specified ARN to an
alias, a fully specified ARN to a key, or a globally unique
identifier.</p>
<p>Disabling or deleting the KMS key, or removing CloudTrail permissions
on the key, prevents CloudTrail from logging events to the event data
store, and prevents users from querying the data in the event data store
that was encrypted with the key. After you associate an event data store
with a KMS key, the KMS key cannot be removed or changed. Before you
disable or delete a KMS key that you are using with an event data store,
delete or back up your event data store.</p>
<p>CloudTrail also supports KMS multi-Region keys. For more information
about multi-Region keys, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using
multi-Region keys</a> in the <em>Key Management Service Developer
Guide</em>.</p>
<p>Examples:</p>
<ul>
<li><p><code>alias/MyAliasName</code></p></li>
<li><p><code>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</code></p></li>
<li><p><code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code></p></li>
<li><p><code>12345678-1234-1234-1234-123456789012</code></p></li>
</ul></td>
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

    svc$update_event_data_store(
      EventDataStore = "string",
      Name = "string",
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
      KmsKeyId = "string"
    )
