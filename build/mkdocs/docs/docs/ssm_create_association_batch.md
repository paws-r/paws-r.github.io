<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_create_association_batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified Amazon Web Services Systems Manager document (SSM document) with the specified managed nodes or targets

### Description

Associates the specified Amazon Web Services Systems Manager document
(SSM document) with the specified managed nodes or targets.

When you associate a document with one or more managed nodes using IDs
or tags, Amazon Web Services Systems Manager Agent (SSM Agent) running
on the managed node processes the document and configures the node as
specified.

If you associate a document with a managed node that already has an
associated document, the system returns the AssociationAlreadyExists
exception.

### Usage

    ssm_create_association_batch(Entries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_create_association_batch_:_Entries">Entries</code></td>
<td><p>[required] One or more associations.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Successful = list(
        list(
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
      ),
      Failed = list(
        list(
          Entry = list(
            Name = "string",
            InstanceId = "string",
            Parameters = list(
              list(
                "string"
              )
            ),
            AutomationTargetParameterName = "string",
            DocumentVersion = "string",
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
            )
          ),
          Message = "string",
          Fault = "Client"|"Server"|"Unknown"
        )
      )
    )

### Request syntax

    svc$create_association_batch(
      Entries = list(
        list(
          Name = "string",
          InstanceId = "string",
          Parameters = list(
            list(
              "string"
            )
          ),
          AutomationTargetParameterName = "string",
          DocumentVersion = "string",
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
          )
        )
      )
    )
