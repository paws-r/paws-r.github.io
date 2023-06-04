<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the association for the specified target or managed node

### Description

Describes the association for the specified target or managed node. If
you created the association by using the `Targets` parameter, then you
must retrieve the association by using the association ID.

### Usage

    ssm_describe_association(Name, InstanceId, AssociationId,
      AssociationVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_describe_association_:_Name">Name</code></td>
<td><p>The name of the SSM document.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_association_:_InstanceId">InstanceId</code></td>
<td><p>The managed node ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_association_:_AssociationId">AssociationId</code></td>
<td><p>The association ID for which you want information.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_association_:_AssociationVersion">AssociationVersion</code></td>
<td><p>Specify the association version to retrieve. To view the latest
version, either specify <code style="white-space: pre;">⁠$LATEST⁠</code>
for this parameter, or omit this parameter. To view a list of all
associations for a managed node, use <code>list_associations</code>. To
get a list of versions for a specific association, use
<code>list_association_versions</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationDescription = list(
        Name = "string",
        InstanceId = "string",
        AssociationVersion = "string",
        Date = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdateAssociationDate = as.POSIXct(
          "2015-01-01"
        ),
        Status = list(
          Date = as.POSIXct(
            "2015-01-01"
          ),
          Name = "Pending"|"Success"|"Failed",
          Message = "string",
          AdditionalInfo = "string"
        ),
        Overview = list(
          Status = "string",
          DetailedStatus = "string",
          AssociationStatusAggregatedCount = list(
            123
          )
        ),
        DocumentVersion = "string",
        AutomationTargetParameterName = "string",
        Parameters = list(
          list(
            "string"
          )
        ),
        AssociationId = "string",
        Targets = list(
          list(
            Key = "string",
            Values = list(
              "string"
            )
          )
        ),
        ScheduleExpression = "string",
        OutputLocation = list(
          S3Location = list(
            OutputS3Region = "string",
            OutputS3BucketName = "string",
            OutputS3KeyPrefix = "string"
          )
        ),
        LastExecutionDate = as.POSIXct(
          "2015-01-01"
        ),
        LastSuccessfulExecutionDate = as.POSIXct(
          "2015-01-01"
        ),
        AssociationName = "string",
        MaxErrors = "string",
        MaxConcurrency = "string",
        ComplianceSeverity = "CRITICAL"|"HIGH"|"MEDIUM"|"LOW"|"UNSPECIFIED",
        SyncCompliance = "AUTO"|"MANUAL",
        ApplyOnlyAtCronInterval = TRUE|FALSE,
        CalendarNames = list(
          "string"
        ),
        TargetLocations = list(
          list(
            Accounts = list(
              "string"
            ),
            Regions = list(
              "string"
            ),
            TargetLocationMaxConcurrency = "string",
            TargetLocationMaxErrors = "string",
            ExecutionRoleName = "string",
            TargetLocationAlarmConfiguration = list(
              IgnorePollAlarmFailure = TRUE|FALSE,
              Alarms = list(
                list(
                  Name = "string"
                )
              )
            )
          )
        ),
        ScheduleOffset = 123,
        TargetMaps = list(
          list(
            list(
              "string"
            )
          )
        ),
        AlarmConfiguration = list(
          IgnorePollAlarmFailure = TRUE|FALSE,
          Alarms = list(
            list(
              Name = "string"
            )
          )
        ),
        TriggeredAlarms = list(
          list(
            Name = "string",
            State = "UNKNOWN"|"ALARM"
          )
        )
      )
    )

### Request syntax

    svc$describe_association(
      Name = "string",
      InstanceId = "string",
      AssociationId = "string",
      AssociationVersion = "string"
    )
