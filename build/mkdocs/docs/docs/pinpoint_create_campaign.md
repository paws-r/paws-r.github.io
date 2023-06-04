<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_create_campaign</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new campaign for an application or updates the settings of an existing campaign for an application

### Description

Creates a new campaign for an application or updates the settings of an
existing campaign for an application.

### Usage

    pinpoint_create_campaign(ApplicationId, WriteCampaignRequest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_create_campaign_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_create_campaign_:_WriteCampaignRequest">WriteCampaignRequest</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CampaignResponse = list(
        AdditionalTreatments = list(
          list(
            CustomDeliveryConfiguration = list(
              DeliveryUri = "string",
              EndpointTypes = list(
                "PUSH"|"GCM"|"APNS"|"APNS_SANDBOX"|"APNS_VOIP"|"APNS_VOIP_SANDBOX"|"ADM"|"SMS"|"VOICE"|"EMAIL"|"BAIDU"|"CUSTOM"|"IN_APP"
              )
            ),
            Id = "string",
            MessageConfiguration = list(
              ADMMessage = list(
                Action = "OPEN_APP"|"DEEP_LINK"|"URL",
                Body = "string",
                ImageIconUrl = "string",
                ImageSmallIconUrl = "string",
                ImageUrl = "string",
                JsonBody = "string",
                MediaUrl = "string",
                RawContent = "string",
                SilentPush = TRUE|FALSE,
                TimeToLive = 123,
                Title = "string",
                Url = "string"
              ),
              APNSMessage = list(
                Action = "OPEN_APP"|"DEEP_LINK"|"URL",
                Body = "string",
                ImageIconUrl = "string",
                ImageSmallIconUrl = "string",
                ImageUrl = "string",
                JsonBody = "string",
                MediaUrl = "string",
                RawContent = "string",
                SilentPush = TRUE|FALSE,
                TimeToLive = 123,
                Title = "string",
                Url = "string"
              ),
              BaiduMessage = list(
                Action = "OPEN_APP"|"DEEP_LINK"|"URL",
                Body = "string",
                ImageIconUrl = "string",
                ImageSmallIconUrl = "string",
                ImageUrl = "string",
                JsonBody = "string",
                MediaUrl = "string",
                RawContent = "string",
                SilentPush = TRUE|FALSE,
                TimeToLive = 123,
                Title = "string",
                Url = "string"
              ),
              CustomMessage = list(
                Data = "string"
              ),
              DefaultMessage = list(
                Action = "OPEN_APP"|"DEEP_LINK"|"URL",
                Body = "string",
                ImageIconUrl = "string",
                ImageSmallIconUrl = "string",
                ImageUrl = "string",
                JsonBody = "string",
                MediaUrl = "string",
                RawContent = "string",
                SilentPush = TRUE|FALSE,
                TimeToLive = 123,
                Title = "string",
                Url = "string"
              ),
              EmailMessage = list(
                Body = "string",
                FromAddress = "string",
                HtmlBody = "string",
                Title = "string"
              ),
              GCMMessage = list(
                Action = "OPEN_APP"|"DEEP_LINK"|"URL",
                Body = "string",
                ImageIconUrl = "string",
                ImageSmallIconUrl = "string",
                ImageUrl = "string",
                JsonBody = "string",
                MediaUrl = "string",
                RawContent = "string",
                SilentPush = TRUE|FALSE,
                TimeToLive = 123,
                Title = "string",
                Url = "string"
              ),
              SMSMessage = list(
                Body = "string",
                MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
                OriginationNumber = "string",
                SenderId = "string",
                EntityId = "string",
                TemplateId = "string"
              ),
              InAppMessage = list(
                Body = "string",
                Content = list(
                  list(
                    BackgroundColor = "string",
                    BodyConfig = list(
                      Alignment = "LEFT"|"CENTER"|"RIGHT",
                      Body = "string",
                      TextColor = "string"
                    ),
                    HeaderConfig = list(
                      Alignment = "LEFT"|"CENTER"|"RIGHT",
                      Header = "string",
                      TextColor = "string"
                    ),
                    ImageUrl = "string",
                    PrimaryBtn = list(
                      Android = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      ),
                      DefaultConfig = list(
                        BackgroundColor = "string",
                        BorderRadius = 123,
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string",
                        Text = "string",
                        TextColor = "string"
                      ),
                      IOS = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      ),
                      Web = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      )
                    ),
                    SecondaryBtn = list(
                      Android = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      ),
                      DefaultConfig = list(
                        BackgroundColor = "string",
                        BorderRadius = 123,
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string",
                        Text = "string",
                        TextColor = "string"
                      ),
                      IOS = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      ),
                      Web = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      )
                    )
                  )
                ),
                CustomConfig = list(
                  "string"
                ),
                Layout = "BOTTOM_BANNER"|"TOP_BANNER"|"OVERLAYS"|"MOBILE_FEED"|"MIDDLE_BANNER"|"CAROUSEL"
              )
            ),
            Schedule = list(
              EndTime = "string",
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
              Frequency = "ONCE"|"HOURLY"|"DAILY"|"WEEKLY"|"MONTHLY"|"EVENT"|"IN_APP_EVENT",
              IsLocalTime = TRUE|FALSE,
              QuietTime = list(
                End = "string",
                Start = "string"
              ),
              StartTime = "string",
              Timezone = "string"
            ),
            SizePercent = 123,
            State = list(
              CampaignStatus = "SCHEDULED"|"EXECUTING"|"PENDING_NEXT_RUN"|"COMPLETED"|"PAUSED"|"DELETED"|"INVALID"
            ),
            TemplateConfiguration = list(
              EmailTemplate = list(
                Name = "string",
                Version = "string"
              ),
              PushTemplate = list(
                Name = "string",
                Version = "string"
              ),
              SMSTemplate = list(
                Name = "string",
                Version = "string"
              ),
              VoiceTemplate = list(
                Name = "string",
                Version = "string"
              )
            ),
            TreatmentDescription = "string",
            TreatmentName = "string"
          )
        ),
        ApplicationId = "string",
        Arn = "string",
        CreationDate = "string",
        CustomDeliveryConfiguration = list(
          DeliveryUri = "string",
          EndpointTypes = list(
            "PUSH"|"GCM"|"APNS"|"APNS_SANDBOX"|"APNS_VOIP"|"APNS_VOIP_SANDBOX"|"ADM"|"SMS"|"VOICE"|"EMAIL"|"BAIDU"|"CUSTOM"|"IN_APP"
          )
        ),
        DefaultState = list(
          CampaignStatus = "SCHEDULED"|"EXECUTING"|"PENDING_NEXT_RUN"|"COMPLETED"|"PAUSED"|"DELETED"|"INVALID"
        ),
        Description = "string",
        HoldoutPercent = 123,
        Hook = list(
          LambdaFunctionName = "string",
          Mode = "DELIVERY"|"FILTER",
          WebUrl = "string"
        ),
        Id = "string",
        IsPaused = TRUE|FALSE,
        LastModifiedDate = "string",
        Limits = list(
          Daily = 123,
          MaximumDuration = 123,
          MessagesPerSecond = 123,
          Total = 123,
          Session = 123
        ),
        MessageConfiguration = list(
          ADMMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          APNSMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          BaiduMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          CustomMessage = list(
            Data = "string"
          ),
          DefaultMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          EmailMessage = list(
            Body = "string",
            FromAddress = "string",
            HtmlBody = "string",
            Title = "string"
          ),
          GCMMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          SMSMessage = list(
            Body = "string",
            MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
            OriginationNumber = "string",
            SenderId = "string",
            EntityId = "string",
            TemplateId = "string"
          ),
          InAppMessage = list(
            Body = "string",
            Content = list(
              list(
                BackgroundColor = "string",
                BodyConfig = list(
                  Alignment = "LEFT"|"CENTER"|"RIGHT",
                  Body = "string",
                  TextColor = "string"
                ),
                HeaderConfig = list(
                  Alignment = "LEFT"|"CENTER"|"RIGHT",
                  Header = "string",
                  TextColor = "string"
                ),
                ImageUrl = "string",
                PrimaryBtn = list(
                  Android = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  ),
                  DefaultConfig = list(
                    BackgroundColor = "string",
                    BorderRadius = 123,
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string",
                    Text = "string",
                    TextColor = "string"
                  ),
                  IOS = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  ),
                  Web = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  )
                ),
                SecondaryBtn = list(
                  Android = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  ),
                  DefaultConfig = list(
                    BackgroundColor = "string",
                    BorderRadius = 123,
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string",
                    Text = "string",
                    TextColor = "string"
                  ),
                  IOS = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  ),
                  Web = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  )
                )
              )
            ),
            CustomConfig = list(
              "string"
            ),
            Layout = "BOTTOM_BANNER"|"TOP_BANNER"|"OVERLAYS"|"MOBILE_FEED"|"MIDDLE_BANNER"|"CAROUSEL"
          )
        ),
        Name = "string",
        Schedule = list(
          EndTime = "string",
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
          Frequency = "ONCE"|"HOURLY"|"DAILY"|"WEEKLY"|"MONTHLY"|"EVENT"|"IN_APP_EVENT",
          IsLocalTime = TRUE|FALSE,
          QuietTime = list(
            End = "string",
            Start = "string"
          ),
          StartTime = "string",
          Timezone = "string"
        ),
        SegmentId = "string",
        SegmentVersion = 123,
        State = list(
          CampaignStatus = "SCHEDULED"|"EXECUTING"|"PENDING_NEXT_RUN"|"COMPLETED"|"PAUSED"|"DELETED"|"INVALID"
        ),
        tags = list(
          "string"
        ),
        TemplateConfiguration = list(
          EmailTemplate = list(
            Name = "string",
            Version = "string"
          ),
          PushTemplate = list(
            Name = "string",
            Version = "string"
          ),
          SMSTemplate = list(
            Name = "string",
            Version = "string"
          ),
          VoiceTemplate = list(
            Name = "string",
            Version = "string"
          )
        ),
        TreatmentDescription = "string",
        TreatmentName = "string",
        Version = 123,
        Priority = 123
      )
    )

### Request syntax

    svc$create_campaign(
      ApplicationId = "string",
      WriteCampaignRequest = list(
        AdditionalTreatments = list(
          list(
            CustomDeliveryConfiguration = list(
              DeliveryUri = "string",
              EndpointTypes = list(
                "PUSH"|"GCM"|"APNS"|"APNS_SANDBOX"|"APNS_VOIP"|"APNS_VOIP_SANDBOX"|"ADM"|"SMS"|"VOICE"|"EMAIL"|"BAIDU"|"CUSTOM"|"IN_APP"
              )
            ),
            MessageConfiguration = list(
              ADMMessage = list(
                Action = "OPEN_APP"|"DEEP_LINK"|"URL",
                Body = "string",
                ImageIconUrl = "string",
                ImageSmallIconUrl = "string",
                ImageUrl = "string",
                JsonBody = "string",
                MediaUrl = "string",
                RawContent = "string",
                SilentPush = TRUE|FALSE,
                TimeToLive = 123,
                Title = "string",
                Url = "string"
              ),
              APNSMessage = list(
                Action = "OPEN_APP"|"DEEP_LINK"|"URL",
                Body = "string",
                ImageIconUrl = "string",
                ImageSmallIconUrl = "string",
                ImageUrl = "string",
                JsonBody = "string",
                MediaUrl = "string",
                RawContent = "string",
                SilentPush = TRUE|FALSE,
                TimeToLive = 123,
                Title = "string",
                Url = "string"
              ),
              BaiduMessage = list(
                Action = "OPEN_APP"|"DEEP_LINK"|"URL",
                Body = "string",
                ImageIconUrl = "string",
                ImageSmallIconUrl = "string",
                ImageUrl = "string",
                JsonBody = "string",
                MediaUrl = "string",
                RawContent = "string",
                SilentPush = TRUE|FALSE,
                TimeToLive = 123,
                Title = "string",
                Url = "string"
              ),
              CustomMessage = list(
                Data = "string"
              ),
              DefaultMessage = list(
                Action = "OPEN_APP"|"DEEP_LINK"|"URL",
                Body = "string",
                ImageIconUrl = "string",
                ImageSmallIconUrl = "string",
                ImageUrl = "string",
                JsonBody = "string",
                MediaUrl = "string",
                RawContent = "string",
                SilentPush = TRUE|FALSE,
                TimeToLive = 123,
                Title = "string",
                Url = "string"
              ),
              EmailMessage = list(
                Body = "string",
                FromAddress = "string",
                HtmlBody = "string",
                Title = "string"
              ),
              GCMMessage = list(
                Action = "OPEN_APP"|"DEEP_LINK"|"URL",
                Body = "string",
                ImageIconUrl = "string",
                ImageSmallIconUrl = "string",
                ImageUrl = "string",
                JsonBody = "string",
                MediaUrl = "string",
                RawContent = "string",
                SilentPush = TRUE|FALSE,
                TimeToLive = 123,
                Title = "string",
                Url = "string"
              ),
              SMSMessage = list(
                Body = "string",
                MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
                OriginationNumber = "string",
                SenderId = "string",
                EntityId = "string",
                TemplateId = "string"
              ),
              InAppMessage = list(
                Body = "string",
                Content = list(
                  list(
                    BackgroundColor = "string",
                    BodyConfig = list(
                      Alignment = "LEFT"|"CENTER"|"RIGHT",
                      Body = "string",
                      TextColor = "string"
                    ),
                    HeaderConfig = list(
                      Alignment = "LEFT"|"CENTER"|"RIGHT",
                      Header = "string",
                      TextColor = "string"
                    ),
                    ImageUrl = "string",
                    PrimaryBtn = list(
                      Android = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      ),
                      DefaultConfig = list(
                        BackgroundColor = "string",
                        BorderRadius = 123,
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string",
                        Text = "string",
                        TextColor = "string"
                      ),
                      IOS = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      ),
                      Web = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      )
                    ),
                    SecondaryBtn = list(
                      Android = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      ),
                      DefaultConfig = list(
                        BackgroundColor = "string",
                        BorderRadius = 123,
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string",
                        Text = "string",
                        TextColor = "string"
                      ),
                      IOS = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      ),
                      Web = list(
                        ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                        Link = "string"
                      )
                    )
                  )
                ),
                CustomConfig = list(
                  "string"
                ),
                Layout = "BOTTOM_BANNER"|"TOP_BANNER"|"OVERLAYS"|"MOBILE_FEED"|"MIDDLE_BANNER"|"CAROUSEL"
              )
            ),
            Schedule = list(
              EndTime = "string",
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
              Frequency = "ONCE"|"HOURLY"|"DAILY"|"WEEKLY"|"MONTHLY"|"EVENT"|"IN_APP_EVENT",
              IsLocalTime = TRUE|FALSE,
              QuietTime = list(
                End = "string",
                Start = "string"
              ),
              StartTime = "string",
              Timezone = "string"
            ),
            SizePercent = 123,
            TemplateConfiguration = list(
              EmailTemplate = list(
                Name = "string",
                Version = "string"
              ),
              PushTemplate = list(
                Name = "string",
                Version = "string"
              ),
              SMSTemplate = list(
                Name = "string",
                Version = "string"
              ),
              VoiceTemplate = list(
                Name = "string",
                Version = "string"
              )
            ),
            TreatmentDescription = "string",
            TreatmentName = "string"
          )
        ),
        CustomDeliveryConfiguration = list(
          DeliveryUri = "string",
          EndpointTypes = list(
            "PUSH"|"GCM"|"APNS"|"APNS_SANDBOX"|"APNS_VOIP"|"APNS_VOIP_SANDBOX"|"ADM"|"SMS"|"VOICE"|"EMAIL"|"BAIDU"|"CUSTOM"|"IN_APP"
          )
        ),
        Description = "string",
        HoldoutPercent = 123,
        Hook = list(
          LambdaFunctionName = "string",
          Mode = "DELIVERY"|"FILTER",
          WebUrl = "string"
        ),
        IsPaused = TRUE|FALSE,
        Limits = list(
          Daily = 123,
          MaximumDuration = 123,
          MessagesPerSecond = 123,
          Total = 123,
          Session = 123
        ),
        MessageConfiguration = list(
          ADMMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          APNSMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          BaiduMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          CustomMessage = list(
            Data = "string"
          ),
          DefaultMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          EmailMessage = list(
            Body = "string",
            FromAddress = "string",
            HtmlBody = "string",
            Title = "string"
          ),
          GCMMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          SMSMessage = list(
            Body = "string",
            MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
            OriginationNumber = "string",
            SenderId = "string",
            EntityId = "string",
            TemplateId = "string"
          ),
          InAppMessage = list(
            Body = "string",
            Content = list(
              list(
                BackgroundColor = "string",
                BodyConfig = list(
                  Alignment = "LEFT"|"CENTER"|"RIGHT",
                  Body = "string",
                  TextColor = "string"
                ),
                HeaderConfig = list(
                  Alignment = "LEFT"|"CENTER"|"RIGHT",
                  Header = "string",
                  TextColor = "string"
                ),
                ImageUrl = "string",
                PrimaryBtn = list(
                  Android = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  ),
                  DefaultConfig = list(
                    BackgroundColor = "string",
                    BorderRadius = 123,
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string",
                    Text = "string",
                    TextColor = "string"
                  ),
                  IOS = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  ),
                  Web = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  )
                ),
                SecondaryBtn = list(
                  Android = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  ),
                  DefaultConfig = list(
                    BackgroundColor = "string",
                    BorderRadius = 123,
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string",
                    Text = "string",
                    TextColor = "string"
                  ),
                  IOS = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  ),
                  Web = list(
                    ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                    Link = "string"
                  )
                )
              )
            ),
            CustomConfig = list(
              "string"
            ),
            Layout = "BOTTOM_BANNER"|"TOP_BANNER"|"OVERLAYS"|"MOBILE_FEED"|"MIDDLE_BANNER"|"CAROUSEL"
          )
        ),
        Name = "string",
        Schedule = list(
          EndTime = "string",
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
          Frequency = "ONCE"|"HOURLY"|"DAILY"|"WEEKLY"|"MONTHLY"|"EVENT"|"IN_APP_EVENT",
          IsLocalTime = TRUE|FALSE,
          QuietTime = list(
            End = "string",
            Start = "string"
          ),
          StartTime = "string",
          Timezone = "string"
        ),
        SegmentId = "string",
        SegmentVersion = 123,
        tags = list(
          "string"
        ),
        TemplateConfiguration = list(
          EmailTemplate = list(
            Name = "string",
            Version = "string"
          ),
          PushTemplate = list(
            Name = "string",
            Version = "string"
          ),
          SMSTemplate = list(
            Name = "string",
            Version = "string"
          ),
          VoiceTemplate = list(
            Name = "string",
            Version = "string"
          )
        ),
        TreatmentDescription = "string",
        TreatmentName = "string",
        Priority = 123
      )
    )
