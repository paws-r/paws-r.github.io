<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_segments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the configuration, dimension, and other settings for all the segments that are associated with an application

### Description

Retrieves information about the configuration, dimension, and other
settings for all the segments that are associated with an application.

### Usage

    pinpoint_get_segments(ApplicationId, PageSize, Token)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_segments_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_get_segments_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="odd">
<td><code id="pinpoint_get_segments_:_Token">Token</code></td>
<td><p>The NextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SegmentsResponse = list(
        Item = list(
          list(
            ApplicationId = "string",
            Arn = "string",
            CreationDate = "string",
            Dimensions = list(
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
            ),
            Id = "string",
            ImportDefinition = list(
              ChannelCounts = list(
                123
              ),
              ExternalId = "string",
              Format = "CSV"|"JSON",
              RoleArn = "string",
              S3Url = "string",
              Size = 123
            ),
            LastModifiedDate = "string",
            Name = "string",
            SegmentGroups = list(
              Groups = list(
                list(
                  Dimensions = list(
                    list(
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
                  SourceSegments = list(
                    list(
                      Id = "string",
                      Version = 123
                    )
                  ),
                  SourceType = "ALL"|"ANY"|"NONE",
                  Type = "ALL"|"ANY"|"NONE"
                )
              ),
              Include = "ALL"|"ANY"|"NONE"
            ),
            SegmentType = "DIMENSIONAL"|"IMPORT",
            tags = list(
              "string"
            ),
            Version = 123
          )
        ),
        NextToken = "string"
      )
    )

### Request syntax

    svc$get_segments(
      ApplicationId = "string",
      PageSize = "string",
      Token = "string"
    )
