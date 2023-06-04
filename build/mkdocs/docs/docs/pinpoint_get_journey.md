<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_journey</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the status, configuration, and other settings for a journey

### Description

Retrieves information about the status, configuration, and other
settings for a journey.

### Usage

    pinpoint_get_journey(ApplicationId, JourneyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_journey_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_get_journey_:_JourneyId">JourneyId</code></td>
<td><p>[required] The unique identifier for the journey.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JourneyResponse = list(
        Activities = list(
          list(
            CUSTOM = list(
              DeliveryUri = "string",
              EndpointTypes = list(
                "PUSH"|"GCM"|"APNS"|"APNS_SANDBOX"|"APNS_VOIP"|"APNS_VOIP_SANDBOX"|"ADM"|"SMS"|"VOICE"|"EMAIL"|"BAIDU"|"CUSTOM"|"IN_APP"
              ),
              MessageConfig = list(
                Data = "string"
              ),
              NextActivity = "string",
              TemplateName = "string",
              TemplateVersion = "string"
            ),
            ConditionalSplit = list(
              Condition = list(
                Conditions = list(
                  list(
                    EventCondition = list(
                      Dimensions = list(
                        Attributes = list(
                          list(
                            AttributeType = "INCLUSIVE"|"EXCLUSIVE"|"CONTAINS"|"BEFORE"|"AFTER"|"ON"|"BETWEEN",
                            Values = list(
                              "string"
                            )
                          )
                        ),
                        EventType = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        Metrics = list(
                          list(
                            ComparisonOperator = "string",
                            Value = 123.0
                          )
                        )
                      ),
                      MessageActivity = "string"
                    ),
                    SegmentCondition = list(
                      SegmentId = "string"
                    ),
                    SegmentDimensions = list(
                      Attributes = list(
                        list(
                          AttributeType = "INCLUSIVE"|"EXCLUSIVE"|"CONTAINS"|"BEFORE"|"AFTER"|"ON"|"BETWEEN",
                          Values = list(
                            "string"
                          )
                        )
                      ),
                      Behavior = list(
                        Recency = list(
                          Duration = "HR_24"|"DAY_7"|"DAY_14"|"DAY_30",
                          RecencyType = "ACTIVE"|"INACTIVE"
                        )
                      ),
                      Demographic = list(
                        AppVersion = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        Channel = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        DeviceType = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        Make = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        Model = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        Platform = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        )
                      ),
                      Location = list(
                        Country = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        GPSPoint = list(
                          Coordinates = list(
                            Latitude = 123.0,
                            Longitude = 123.0
                          ),
                          RangeInKilometers = 123.0
                        )
                      ),
                      Metrics = list(
                        list(
                          ComparisonOperator = "string",
                          Value = 123.0
                        )
                      ),
                      UserAttributes = list(
                        list(
                          AttributeType = "INCLUSIVE"|"EXCLUSIVE"|"CONTAINS"|"BEFORE"|"AFTER"|"ON"|"BETWEEN",
                          Values = list(
                            "string"
                          )
                        )
                      )
                    )
                  )
                ),
                Operator = "ALL"|"ANY"
              ),
              EvaluationWaitTime = list(
                WaitFor = "string",
                WaitUntil = "string"
              ),
              FalseActivity = "string",
              TrueActivity = "string"
            ),
            Description = "string",
            EMAIL = list(
              MessageConfig = list(
                FromAddress = "string"
              ),
              NextActivity = "string",
              TemplateName = "string",
              TemplateVersion = "string"
            ),
            Holdout = list(
              NextActivity = "string",
              Percentage = 123
            ),
            MultiCondition = list(
              Branches = list(
                list(
                  Condition = list(
                    EventCondition = list(
                      Dimensions = list(
                        Attributes = list(
                          list(
                            AttributeType = "INCLUSIVE"|"EXCLUSIVE"|"CONTAINS"|"BEFORE"|"AFTER"|"ON"|"BETWEEN",
                            Values = list(
                              "string"
                            )
                          )
                        ),
                        EventType = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        Metrics = list(
                          list(
                            ComparisonOperator = "string",
                            Value = 123.0
                          )
                        )
                      ),
                      MessageActivity = "string"
                    ),
                    SegmentCondition = list(
                      SegmentId = "string"
                    ),
                    SegmentDimensions = list(
                      Attributes = list(
                        list(
                          AttributeType = "INCLUSIVE"|"EXCLUSIVE"|"CONTAINS"|"BEFORE"|"AFTER"|"ON"|"BETWEEN",
                          Values = list(
                            "string"
                          )
                        )
                      ),
                      Behavior = list(
                        Recency = list(
                          Duration = "HR_24"|"DAY_7"|"DAY_14"|"DAY_30",
                          RecencyType = "ACTIVE"|"INACTIVE"
                        )
                      ),
                      Demographic = list(
                        AppVersion = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        Channel = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        DeviceType = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        Make = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        Model = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        Platform = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        )
                      ),
                      Location = list(
                        Country = list(
                          DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                          Values = list(
                            "string"
                          )
                        ),
                        GPSPoint = list(
                          Coordinates = list(
                            Latitude = 123.0,
                            Longitude = 123.0
                          ),
                          RangeInKilometers = 123.0
                        )
                      ),
                      Metrics = list(
                        list(
                          ComparisonOperator = "string",
                          Value = 123.0
                        )
                      ),
                      UserAttributes = list(
                        list(
                          AttributeType = "INCLUSIVE"|"EXCLUSIVE"|"CONTAINS"|"BEFORE"|"AFTER"|"ON"|"BETWEEN",
                          Values = list(
                            "string"
                          )
                        )
                      )
                    )
                  ),
                  NextActivity = "string"
                )
              ),
              DefaultActivity = "string",
              EvaluationWaitTime = list(
                WaitFor = "string",
                WaitUntil = "string"
              )
            ),
            PUSH = list(
              MessageConfig = list(
                TimeToLive = "string"
              ),
              NextActivity = "string",
              TemplateName = "string",
              TemplateVersion = "string"
            ),
            RandomSplit = list(
              Branches = list(
                list(
                  NextActivity = "string",
                  Percentage = 123
                )
              )
            ),
            SMS = list(
              MessageConfig = list(
                MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
                OriginationNumber = "string",
                SenderId = "string",
                EntityId = "string",
                TemplateId = "string"
              ),
              NextActivity = "string",
              TemplateName = "string",
              TemplateVersion = "string"
            ),
            Wait = list(
              NextActivity = "string",
              WaitTime = list(
                WaitFor = "string",
                WaitUntil = "string"
              )
            ),
            ContactCenter = list(
              NextActivity = "string"
            )
          )
        ),
        ApplicationId = "string",
        CreationDate = "string",
        Id = "string",
        LastModifiedDate = "string",
        Limits = list(
          DailyCap = 123,
          EndpointReentryCap = 123,
          MessagesPerSecond = 123,
          EndpointReentryInterval = "string"
        ),
        LocalTime = TRUE|FALSE,
        Name = "string",
        QuietTime = list(
          End = "string",
          Start = "string"
        ),
        RefreshFrequency = "string",
        Schedule = list(
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          Timezone = "string"
        ),
        StartActivity = "string",
        StartCondition = list(
          Description = "string",
          EventStartCondition = list(
            EventFilter = list(
              Dimensions = list(
                Attributes = list(
                  list(
                    AttributeType = "INCLUSIVE"|"EXCLUSIVE"|"CONTAINS"|"BEFORE"|"AFTER"|"ON"|"BETWEEN",
                    Values = list(
                      "string"
                    )
                  )
                ),
                EventType = list(
                  DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                ),
                Metrics = list(
                  list(
                    ComparisonOperator = "string",
                    Value = 123.0
                  )
                )
              ),
              FilterType = "SYSTEM"|"ENDPOINT"
            ),
            SegmentId = "string"
          ),
          SegmentStartCondition = list(
            SegmentId = "string"
          )
        ),
        State = "DRAFT"|"ACTIVE"|"COMPLETED"|"CANCELLED"|"CLOSED"|"PAUSED",
        tags = list(
          "string"
        ),
        WaitForQuietTime = TRUE|FALSE,
        RefreshOnSegmentUpdate = TRUE|FALSE,
        JourneyChannelSettings = list(
          ConnectCampaignArn = "string",
          ConnectCampaignExecutionRoleArn = "string"
        ),
        SendingSchedule = TRUE|FALSE,
        OpenHours = list(
          EMAIL = list(
            list(
              list(
                StartTime = "string",
                EndTime = "string"
              )
            )
          ),
          SMS = list(
            list(
              list(
                StartTime = "string",
                EndTime = "string"
              )
            )
          ),
          PUSH = list(
            list(
              list(
                StartTime = "string",
                EndTime = "string"
              )
            )
          ),
          VOICE = list(
            list(
              list(
                StartTime = "string",
                EndTime = "string"
              )
            )
          ),
          CUSTOM = list(
            list(
              list(
                StartTime = "string",
                EndTime = "string"
              )
            )
          )
        ),
        ClosedDays = list(
          EMAIL = list(
            list(
              Name = "string",
              StartDateTime = "string",
              EndDateTime = "string"
            )
          ),
          SMS = list(
            list(
              Name = "string",
              StartDateTime = "string",
              EndDateTime = "string"
            )
          ),
          PUSH = list(
            list(
              Name = "string",
              StartDateTime = "string",
              EndDateTime = "string"
            )
          ),
          VOICE = list(
            list(
              Name = "string",
              StartDateTime = "string",
              EndDateTime = "string"
            )
          ),
          CUSTOM = list(
            list(
              Name = "string",
              StartDateTime = "string",
              EndDateTime = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_journey(
      ApplicationId = "string",
      JourneyId = "string"
    )
