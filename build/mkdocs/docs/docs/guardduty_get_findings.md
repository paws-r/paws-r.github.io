<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes Amazon GuardDuty findings specified by finding IDs

### Description

Describes Amazon GuardDuty findings specified by finding IDs.

### Usage

    guardduty_get_findings(DetectorId, FindingIds, SortCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_get_findings_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector that specifies the GuardDuty
service whose findings you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_get_findings_:_FindingIds">FindingIds</code></td>
<td><p>[required] The IDs of the findings that you want to
retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_get_findings_:_SortCriteria">SortCriteria</code></td>
<td><p>Represents the criteria used for sorting findings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Findings = list(
        list(
          AccountId = "string",
          Arn = "string",
          Confidence = 123.0,
          CreatedAt = "string",
          Description = "string",
          Id = "string",
          Partition = "string",
          Region = "string",
          Resource = list(
            AccessKeyDetails = list(
              AccessKeyId = "string",
              PrincipalId = "string",
              UserName = "string",
              UserType = "string"
            ),
            S3BucketDetails = list(
              list(
                Arn = "string",
                Name = "string",
                Type = "string",
                CreatedAt = as.POSIXct(
                  "2015-01-01"
                ),
                Owner = list(
                  Id = "string"
                ),
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                ),
                DefaultServerSideEncryption = list(
                  EncryptionType = "string",
                  KmsMasterKeyArn = "string"
                ),
                PublicAccess = list(
                  PermissionConfiguration = list(
                    BucketLevelPermissions = list(
                      AccessControlList = list(
                        AllowsPublicReadAccess = TRUE|FALSE,
                        AllowsPublicWriteAccess = TRUE|FALSE
                      ),
                      BucketPolicy = list(
                        AllowsPublicReadAccess = TRUE|FALSE,
                        AllowsPublicWriteAccess = TRUE|FALSE
                      ),
                      BlockPublicAccess = list(
                        IgnorePublicAcls = TRUE|FALSE,
                        RestrictPublicBuckets = TRUE|FALSE,
                        BlockPublicAcls = TRUE|FALSE,
                        BlockPublicPolicy = TRUE|FALSE
                      )
                    ),
                    AccountLevelPermissions = list(
                      BlockPublicAccess = list(
                        IgnorePublicAcls = TRUE|FALSE,
                        RestrictPublicBuckets = TRUE|FALSE,
                        BlockPublicAcls = TRUE|FALSE,
                        BlockPublicPolicy = TRUE|FALSE
                      )
                    )
                  ),
                  EffectivePermission = "string"
                )
              )
            ),
            InstanceDetails = list(
              AvailabilityZone = "string",
              IamInstanceProfile = list(
                Arn = "string",
                Id = "string"
              ),
              ImageDescription = "string",
              ImageId = "string",
              InstanceId = "string",
              InstanceState = "string",
              InstanceType = "string",
              OutpostArn = "string",
              LaunchTime = "string",
              NetworkInterfaces = list(
                list(
                  Ipv6Addresses = list(
                    "string"
                  ),
                  NetworkInterfaceId = "string",
                  PrivateDnsName = "string",
                  PrivateIpAddress = "string",
                  PrivateIpAddresses = list(
                    list(
                      PrivateDnsName = "string",
                      PrivateIpAddress = "string"
                    )
                  ),
                  PublicDnsName = "string",
                  PublicIp = "string",
                  SecurityGroups = list(
                    list(
                      GroupId = "string",
                      GroupName = "string"
                    )
                  ),
                  SubnetId = "string",
                  VpcId = "string"
                )
              ),
              Platform = "string",
              ProductCodes = list(
                list(
                  Code = "string",
                  ProductType = "string"
                )
              ),
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              )
            ),
            EksClusterDetails = list(
              Name = "string",
              Arn = "string",
              VpcId = "string",
              Status = "string",
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              ),
              CreatedAt = as.POSIXct(
                "2015-01-01"
              )
            ),
            KubernetesDetails = list(
              KubernetesUserDetails = list(
                Username = "string",
                Uid = "string",
                Groups = list(
                  "string"
                )
              ),
              KubernetesWorkloadDetails = list(
                Name = "string",
                Type = "string",
                Uid = "string",
                Namespace = "string",
                HostNetwork = TRUE|FALSE,
                Containers = list(
                  list(
                    ContainerRuntime = "string",
                    Id = "string",
                    Name = "string",
                    Image = "string",
                    ImagePrefix = "string",
                    VolumeMounts = list(
                      list(
                        Name = "string",
                        MountPath = "string"
                      )
                    ),
                    SecurityContext = list(
                      Privileged = TRUE|FALSE
                    )
                  )
                ),
                Volumes = list(
                  list(
                    Name = "string",
                    HostPath = list(
                      Path = "string"
                    )
                  )
                )
              )
            ),
            ResourceType = "string",
            EbsVolumeDetails = list(
              ScannedVolumeDetails = list(
                list(
                  VolumeArn = "string",
                  VolumeType = "string",
                  DeviceName = "string",
                  VolumeSizeInGB = 123,
                  EncryptionType = "string",
                  SnapshotArn = "string",
                  KmsKeyArn = "string"
                )
              ),
              SkippedVolumeDetails = list(
                list(
                  VolumeArn = "string",
                  VolumeType = "string",
                  DeviceName = "string",
                  VolumeSizeInGB = 123,
                  EncryptionType = "string",
                  SnapshotArn = "string",
                  KmsKeyArn = "string"
                )
              )
            ),
            EcsClusterDetails = list(
              Name = "string",
              Arn = "string",
              Status = "string",
              ActiveServicesCount = 123,
              RegisteredContainerInstancesCount = 123,
              RunningTasksCount = 123,
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              ),
              TaskDetails = list(
                Arn = "string",
                DefinitionArn = "string",
                Version = "string",
                TaskCreatedAt = as.POSIXct(
                  "2015-01-01"
                ),
                StartedAt = as.POSIXct(
                  "2015-01-01"
                ),
                StartedBy = "string",
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                ),
                Volumes = list(
                  list(
                    Name = "string",
                    HostPath = list(
                      Path = "string"
                    )
                  )
                ),
                Containers = list(
                  list(
                    ContainerRuntime = "string",
                    Id = "string",
                    Name = "string",
                    Image = "string",
                    ImagePrefix = "string",
                    VolumeMounts = list(
                      list(
                        Name = "string",
                        MountPath = "string"
                      )
                    ),
                    SecurityContext = list(
                      Privileged = TRUE|FALSE
                    )
                  )
                ),
                Group = "string"
              )
            ),
            ContainerDetails = list(
              ContainerRuntime = "string",
              Id = "string",
              Name = "string",
              Image = "string",
              ImagePrefix = "string",
              VolumeMounts = list(
                list(
                  Name = "string",
                  MountPath = "string"
                )
              ),
              SecurityContext = list(
                Privileged = TRUE|FALSE
              )
            ),
            RdsDbInstanceDetails = list(
              DbInstanceIdentifier = "string",
              Engine = "string",
              EngineVersion = "string",
              DbClusterIdentifier = "string",
              DbInstanceArn = "string",
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              )
            ),
            RdsDbUserDetails = list(
              User = "string",
              Application = "string",
              Database = "string",
              Ssl = "string",
              AuthMethod = "string"
            ),
            LambdaDetails = list(
              FunctionArn = "string",
              FunctionName = "string",
              Description = "string",
              LastModifiedAt = as.POSIXct(
                "2015-01-01"
              ),
              RevisionId = "string",
              FunctionVersion = "string",
              Role = "string",
              VpcConfig = list(
                SubnetIds = list(
                  "string"
                ),
                VpcId = "string",
                SecurityGroups = list(
                  list(
                    GroupId = "string",
                    GroupName = "string"
                  )
                )
              ),
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              )
            )
          ),
          SchemaVersion = "string",
          Service = list(
            Action = list(
              ActionType = "string",
              AwsApiCallAction = list(
                Api = "string",
                CallerType = "string",
                DomainDetails = list(
                  Domain = "string"
                ),
                ErrorCode = "string",
                UserAgent = "string",
                RemoteIpDetails = list(
                  City = list(
                    CityName = "string"
                  ),
                  Country = list(
                    CountryCode = "string",
                    CountryName = "string"
                  ),
                  GeoLocation = list(
                    Lat = 123.0,
                    Lon = 123.0
                  ),
                  IpAddressV4 = "string",
                  Organization = list(
                    Asn = "string",
                    AsnOrg = "string",
                    Isp = "string",
                    Org = "string"
                  )
                ),
                ServiceName = "string",
                RemoteAccountDetails = list(
                  AccountId = "string",
                  Affiliated = TRUE|FALSE
                ),
                AffectedResources = list(
                  "string"
                )
              ),
              DnsRequestAction = list(
                Domain = "string",
                Protocol = "string",
                Blocked = TRUE|FALSE
              ),
              NetworkConnectionAction = list(
                Blocked = TRUE|FALSE,
                ConnectionDirection = "string",
                LocalPortDetails = list(
                  Port = 123,
                  PortName = "string"
                ),
                Protocol = "string",
                LocalIpDetails = list(
                  IpAddressV4 = "string"
                ),
                RemoteIpDetails = list(
                  City = list(
                    CityName = "string"
                  ),
                  Country = list(
                    CountryCode = "string",
                    CountryName = "string"
                  ),
                  GeoLocation = list(
                    Lat = 123.0,
                    Lon = 123.0
                  ),
                  IpAddressV4 = "string",
                  Organization = list(
                    Asn = "string",
                    AsnOrg = "string",
                    Isp = "string",
                    Org = "string"
                  )
                ),
                RemotePortDetails = list(
                  Port = 123,
                  PortName = "string"
                )
              ),
              PortProbeAction = list(
                Blocked = TRUE|FALSE,
                PortProbeDetails = list(
                  list(
                    LocalPortDetails = list(
                      Port = 123,
                      PortName = "string"
                    ),
                    LocalIpDetails = list(
                      IpAddressV4 = "string"
                    ),
                    RemoteIpDetails = list(
                      City = list(
                        CityName = "string"
                      ),
                      Country = list(
                        CountryCode = "string",
                        CountryName = "string"
                      ),
                      GeoLocation = list(
                        Lat = 123.0,
                        Lon = 123.0
                      ),
                      IpAddressV4 = "string",
                      Organization = list(
                        Asn = "string",
                        AsnOrg = "string",
                        Isp = "string",
                        Org = "string"
                      )
                    )
                  )
                )
              ),
              KubernetesApiCallAction = list(
                RequestUri = "string",
                Verb = "string",
                SourceIps = list(
                  "string"
                ),
                UserAgent = "string",
                RemoteIpDetails = list(
                  City = list(
                    CityName = "string"
                  ),
                  Country = list(
                    CountryCode = "string",
                    CountryName = "string"
                  ),
                  GeoLocation = list(
                    Lat = 123.0,
                    Lon = 123.0
                  ),
                  IpAddressV4 = "string",
                  Organization = list(
                    Asn = "string",
                    AsnOrg = "string",
                    Isp = "string",
                    Org = "string"
                  )
                ),
                StatusCode = 123,
                Parameters = "string"
              ),
              RdsLoginAttemptAction = list(
                RemoteIpDetails = list(
                  City = list(
                    CityName = "string"
                  ),
                  Country = list(
                    CountryCode = "string",
                    CountryName = "string"
                  ),
                  GeoLocation = list(
                    Lat = 123.0,
                    Lon = 123.0
                  ),
                  IpAddressV4 = "string",
                  Organization = list(
                    Asn = "string",
                    AsnOrg = "string",
                    Isp = "string",
                    Org = "string"
                  )
                ),
                LoginAttributes = list(
                  list(
                    User = "string",
                    Application = "string",
                    FailedLoginAttempts = 123,
                    SuccessfulLoginAttempts = 123
                  )
                )
              )
            ),
            Evidence = list(
              ThreatIntelligenceDetails = list(
                list(
                  ThreatListName = "string",
                  ThreatNames = list(
                    "string"
                  )
                )
              )
            ),
            Archived = TRUE|FALSE,
            Count = 123,
            DetectorId = "string",
            EventFirstSeen = "string",
            EventLastSeen = "string",
            ResourceRole = "string",
            ServiceName = "string",
            UserFeedback = "string",
            AdditionalInfo = list(
              Value = "string",
              Type = "string"
            ),
            FeatureName = "string",
            EbsVolumeScanDetails = list(
              ScanId = "string",
              ScanStartedAt = as.POSIXct(
                "2015-01-01"
              ),
              ScanCompletedAt = as.POSIXct(
                "2015-01-01"
              ),
              TriggerFindingId = "string",
              Sources = list(
                "string"
              ),
              ScanDetections = list(
                ScannedItemCount = list(
                  TotalGb = 123,
                  Files = 123,
                  Volumes = 123
                ),
                ThreatsDetectedItemCount = list(
                  Files = 123
                ),
                HighestSeverityThreatDetails = list(
                  Severity = "string",
                  ThreatName = "string",
                  Count = 123
                ),
                ThreatDetectedByName = list(
                  ItemCount = 123,
                  UniqueThreatNameCount = 123,
                  Shortened = TRUE|FALSE,
                  ThreatNames = list(
                    list(
                      Name = "string",
                      Severity = "string",
                      ItemCount = 123,
                      FilePaths = list(
                        list(
                          FilePath = "string",
                          VolumeArn = "string",
                          Hash = "string",
                          FileName = "string"
                        )
                      )
                    )
                  )
                )
              ),
              ScanType = "GUARDDUTY_INITIATED"|"ON_DEMAND"
            ),
            RuntimeDetails = list(
              Process = list(
                Name = "string",
                ExecutablePath = "string",
                ExecutableSha256 = "string",
                NamespacePid = 123,
                Pwd = "string",
                Pid = 123,
                StartTime = as.POSIXct(
                  "2015-01-01"
                ),
                Uuid = "string",
                ParentUuid = "string",
                User = "string",
                UserId = 123,
                Euid = 123,
                Lineage = list(
                  list(
                    StartTime = as.POSIXct(
                      "2015-01-01"
                    ),
                    NamespacePid = 123,
                    UserId = 123,
                    Name = "string",
                    Pid = 123,
                    Uuid = "string",
                    ExecutablePath = "string",
                    Euid = 123,
                    ParentUuid = "string"
                  )
                )
              ),
              Context = list(
                ModifyingProcess = list(
                  Name = "string",
                  ExecutablePath = "string",
                  ExecutableSha256 = "string",
                  NamespacePid = 123,
                  Pwd = "string",
                  Pid = 123,
                  StartTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  Uuid = "string",
                  ParentUuid = "string",
                  User = "string",
                  UserId = 123,
                  Euid = 123,
                  Lineage = list(
                    list(
                      StartTime = as.POSIXct(
                        "2015-01-01"
                      ),
                      NamespacePid = 123,
                      UserId = 123,
                      Name = "string",
                      Pid = 123,
                      Uuid = "string",
                      ExecutablePath = "string",
                      Euid = 123,
                      ParentUuid = "string"
                    )
                  )
                ),
                ModifiedAt = as.POSIXct(
                  "2015-01-01"
                ),
                ScriptPath = "string",
                LibraryPath = "string",
                LdPreloadValue = "string",
                SocketPath = "string",
                RuncBinaryPath = "string",
                ReleaseAgentPath = "string",
                MountSource = "string",
                MountTarget = "string",
                FileSystemType = "string",
                Flags = list(
                  "string"
                ),
                ModuleName = "string",
                ModuleFilePath = "string",
                ModuleSha256 = "string",
                ShellHistoryFilePath = "string",
                TargetProcess = list(
                  Name = "string",
                  ExecutablePath = "string",
                  ExecutableSha256 = "string",
                  NamespacePid = 123,
                  Pwd = "string",
                  Pid = 123,
                  StartTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  Uuid = "string",
                  ParentUuid = "string",
                  User = "string",
                  UserId = 123,
                  Euid = 123,
                  Lineage = list(
                    list(
                      StartTime = as.POSIXct(
                        "2015-01-01"
                      ),
                      NamespacePid = 123,
                      UserId = 123,
                      Name = "string",
                      Pid = 123,
                      Uuid = "string",
                      ExecutablePath = "string",
                      Euid = 123,
                      ParentUuid = "string"
                    )
                  )
                ),
                AddressFamily = "string",
                IanaProtocolNumber = 123,
                MemoryRegions = list(
                  "string"
                )
              )
            )
          ),
          Severity = 123.0,
          Title = "string",
          Type = "string",
          UpdatedAt = "string"
        )
      )
    )

### Request syntax

    svc$get_findings(
      DetectorId = "string",
      FindingIds = list(
        "string"
      ),
      SortCriteria = list(
        AttributeName = "string",
        OrderBy = "ASC"|"DESC"
      )
    )
