<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_create_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a data source connector that you want to use with an Amazon Kendra index

### Description

Creates a data source connector that you want to use with an Amazon
Kendra index.

You specify a name, data source connector type and description for your
data source. You also specify configuration information for the data
source connector.

`create_data_source` is a synchronous operation. The operation returns
200 if the data source was successfully created. Otherwise, an exception
is raised.

For an example of creating an index and data source using the Python
SDK, see [Getting started with Python
SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html). For
an example of creating an index and data source using the Java SDK, see
[Getting started with Java
SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html).

### Usage

    kendra_create_data_source(Name, IndexId, Type, Configuration,
      VpcConfiguration, Description, Schedule, RoleArn, Tags, ClientToken,
      LanguageCode, CustomDocumentEnrichmentConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_create_data_source_:_Name">Name</code></td>
<td><p>[required] A name for the data source connector.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_data_source_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index you want to use with the
data source connector.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_data_source_:_Type">Type</code></td>
<td><p>[required] The type of data source repository. For example,
<code>SHAREPOINT</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_data_source_:_Configuration">Configuration</code></td>
<td><p>Configuration information to connect to your data source
repository.</p>
<p>You can't specify the <code>Configuration</code> parameter when the
<code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
you receive a <code>ValidationException</code> exception.</p>
<p>The <code>Configuration</code> parameter is required for all other
data sources.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_data_source_:_VpcConfiguration">VpcConfiguration</code></td>
<td><p>Configuration information for an Amazon Virtual Private Cloud to
connect to your data source. For more information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html">Configuring
a VPC</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_data_source_:_Description">Description</code></td>
<td><p>A description for the data source connector.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_data_source_:_Schedule">Schedule</code></td>
<td><p>Sets the frequency for Amazon Kendra to check the documents in
your data source repository and update the index. If you don't set a
schedule Amazon Kendra will not periodically update the index. You can
call the <code>start_data_source_sync_job</code> API to update the
index.</p>
<p>Specify a <code style="white-space: pre;">⁠cron-⁠</code> format
schedule string or an empty string to indicate that the index is updated
on demand.</p>
<p>You can't specify the <code>Schedule</code> parameter when the
<code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
you receive a <code>ValidationException</code> exception.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_data_source_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an IAM role with permission to
access the data source and required resources. For more information, see
<a
href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM
access roles for Amazon Kendra.</a>.</p>
<p>You can't specify the <code>RoleArn</code> parameter when the
<code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
you receive a <code>ValidationException</code> exception.</p>
<p>The <code>RoleArn</code> parameter is required for all other data
sources.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_data_source_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs that identify or categorize the data
source connector. You can also use tags to help control access to the
data source connector. Tag keys and values can consist of Unicode
letters, digits, white space, and any of the following symbols: _ . : /
= + - @.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_data_source_:_ClientToken">ClientToken</code></td>
<td><p>A token that you provide to identify the request to create a data
source connector. Multiple calls to the <code>create_data_source</code>
API with the same client token will create only one data source
connector.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_data_source_:_LanguageCode">LanguageCode</code></td>
<td><p>The code for a language. This allows you to support a language
for all documents when creating the data source connector. English is
supported by default. For more information on supported languages,
including their codes, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
documents in languages other than English</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_data_source_:_CustomDocumentEnrichmentConfiguration">CustomDocumentEnrichmentConfiguration</code></td>
<td><p>Configuration information for altering document metadata and
content during the document ingestion process.</p>
<p>For more information on how to create, modify and delete document
metadata, or make other content alterations when you ingest documents
into Amazon Kendra, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing
document metadata during the ingestion process</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string"
    )

### Request syntax

    svc$create_data_source(
      Name = "string",
      IndexId = "string",
      Type = "S3"|"SHAREPOINT"|"DATABASE"|"SALESFORCE"|"ONEDRIVE"|"SERVICENOW"|"CUSTOM"|"CONFLUENCE"|"GOOGLEDRIVE"|"WEBCRAWLER"|"WORKDOCS"|"FSX"|"SLACK"|"BOX"|"QUIP"|"JIRA"|"GITHUB"|"ALFRESCO"|"TEMPLATE",
      Configuration = list(
        S3Configuration = list(
          BucketName = "string",
          InclusionPrefixes = list(
            "string"
          ),
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          DocumentsMetadataConfiguration = list(
            S3Prefix = "string"
          ),
          AccessControlListConfiguration = list(
            KeyPath = "string"
          )
        ),
        SharePointConfiguration = list(
          SharePointVersion = "SHAREPOINT_2013"|"SHAREPOINT_2016"|"SHAREPOINT_ONLINE"|"SHAREPOINT_2019",
          Urls = list(
            "string"
          ),
          SecretArn = "string",
          CrawlAttachments = TRUE|FALSE,
          UseChangeLog = TRUE|FALSE,
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          VpcConfiguration = list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          ),
          FieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          DocumentTitleFieldName = "string",
          DisableLocalGroups = TRUE|FALSE,
          SslCertificateS3Path = list(
            Bucket = "string",
            Key = "string"
          ),
          AuthenticationType = "HTTP_BASIC"|"OAUTH2",
          ProxyConfiguration = list(
            Host = "string",
            Port = 123,
            Credentials = "string"
          )
        ),
        DatabaseConfiguration = list(
          DatabaseEngineType = "RDS_AURORA_MYSQL"|"RDS_AURORA_POSTGRESQL"|"RDS_MYSQL"|"RDS_POSTGRESQL",
          ConnectionConfiguration = list(
            DatabaseHost = "string",
            DatabasePort = 123,
            DatabaseName = "string",
            TableName = "string",
            SecretArn = "string"
          ),
          VpcConfiguration = list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          ),
          ColumnConfiguration = list(
            DocumentIdColumnName = "string",
            DocumentDataColumnName = "string",
            DocumentTitleColumnName = "string",
            FieldMappings = list(
              list(
                DataSourceFieldName = "string",
                DateFieldFormat = "string",
                IndexFieldName = "string"
              )
            ),
            ChangeDetectingColumns = list(
              "string"
            )
          ),
          AclConfiguration = list(
            AllowedGroupsColumnName = "string"
          ),
          SqlConfiguration = list(
            QueryIdentifiersEnclosingOption = "DOUBLE_QUOTES"|"NONE"
          )
        ),
        SalesforceConfiguration = list(
          ServerUrl = "string",
          SecretArn = "string",
          StandardObjectConfigurations = list(
            list(
              Name = "ACCOUNT"|"CAMPAIGN"|"CASE"|"CONTACT"|"CONTRACT"|"DOCUMENT"|"GROUP"|"IDEA"|"LEAD"|"OPPORTUNITY"|"PARTNER"|"PRICEBOOK"|"PRODUCT"|"PROFILE"|"SOLUTION"|"TASK"|"USER",
              DocumentDataFieldName = "string",
              DocumentTitleFieldName = "string",
              FieldMappings = list(
                list(
                  DataSourceFieldName = "string",
                  DateFieldFormat = "string",
                  IndexFieldName = "string"
                )
              )
            )
          ),
          KnowledgeArticleConfiguration = list(
            IncludedStates = list(
              "DRAFT"|"PUBLISHED"|"ARCHIVED"
            ),
            StandardKnowledgeArticleTypeConfiguration = list(
              DocumentDataFieldName = "string",
              DocumentTitleFieldName = "string",
              FieldMappings = list(
                list(
                  DataSourceFieldName = "string",
                  DateFieldFormat = "string",
                  IndexFieldName = "string"
                )
              )
            ),
            CustomKnowledgeArticleTypeConfigurations = list(
              list(
                Name = "string",
                DocumentDataFieldName = "string",
                DocumentTitleFieldName = "string",
                FieldMappings = list(
                  list(
                    DataSourceFieldName = "string",
                    DateFieldFormat = "string",
                    IndexFieldName = "string"
                  )
                )
              )
            )
          ),
          ChatterFeedConfiguration = list(
            DocumentDataFieldName = "string",
            DocumentTitleFieldName = "string",
            FieldMappings = list(
              list(
                DataSourceFieldName = "string",
                DateFieldFormat = "string",
                IndexFieldName = "string"
              )
            ),
            IncludeFilterTypes = list(
              "ACTIVE_USER"|"STANDARD_USER"
            )
          ),
          CrawlAttachments = TRUE|FALSE,
          StandardObjectAttachmentConfiguration = list(
            DocumentTitleFieldName = "string",
            FieldMappings = list(
              list(
                DataSourceFieldName = "string",
                DateFieldFormat = "string",
                IndexFieldName = "string"
              )
            )
          ),
          IncludeAttachmentFilePatterns = list(
            "string"
          ),
          ExcludeAttachmentFilePatterns = list(
            "string"
          )
        ),
        OneDriveConfiguration = list(
          TenantDomain = "string",
          SecretArn = "string",
          OneDriveUsers = list(
            OneDriveUserList = list(
              "string"
            ),
            OneDriveUserS3Path = list(
              Bucket = "string",
              Key = "string"
            )
          ),
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          FieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          DisableLocalGroups = TRUE|FALSE
        ),
        ServiceNowConfiguration = list(
          HostUrl = "string",
          SecretArn = "string",
          ServiceNowBuildVersion = "LONDON"|"OTHERS",
          KnowledgeArticleConfiguration = list(
            CrawlAttachments = TRUE|FALSE,
            IncludeAttachmentFilePatterns = list(
              "string"
            ),
            ExcludeAttachmentFilePatterns = list(
              "string"
            ),
            DocumentDataFieldName = "string",
            DocumentTitleFieldName = "string",
            FieldMappings = list(
              list(
                DataSourceFieldName = "string",
                DateFieldFormat = "string",
                IndexFieldName = "string"
              )
            ),
            FilterQuery = "string"
          ),
          ServiceCatalogConfiguration = list(
            CrawlAttachments = TRUE|FALSE,
            IncludeAttachmentFilePatterns = list(
              "string"
            ),
            ExcludeAttachmentFilePatterns = list(
              "string"
            ),
            DocumentDataFieldName = "string",
            DocumentTitleFieldName = "string",
            FieldMappings = list(
              list(
                DataSourceFieldName = "string",
                DateFieldFormat = "string",
                IndexFieldName = "string"
              )
            )
          ),
          AuthenticationType = "HTTP_BASIC"|"OAUTH2"
        ),
        ConfluenceConfiguration = list(
          ServerUrl = "string",
          SecretArn = "string",
          Version = "CLOUD"|"SERVER",
          SpaceConfiguration = list(
            CrawlPersonalSpaces = TRUE|FALSE,
            CrawlArchivedSpaces = TRUE|FALSE,
            IncludeSpaces = list(
              "string"
            ),
            ExcludeSpaces = list(
              "string"
            ),
            SpaceFieldMappings = list(
              list(
                DataSourceFieldName = "DISPLAY_URL"|"ITEM_TYPE"|"SPACE_KEY"|"URL",
                DateFieldFormat = "string",
                IndexFieldName = "string"
              )
            )
          ),
          PageConfiguration = list(
            PageFieldMappings = list(
              list(
                DataSourceFieldName = "AUTHOR"|"CONTENT_STATUS"|"CREATED_DATE"|"DISPLAY_URL"|"ITEM_TYPE"|"LABELS"|"MODIFIED_DATE"|"PARENT_ID"|"SPACE_KEY"|"SPACE_NAME"|"URL"|"VERSION",
                DateFieldFormat = "string",
                IndexFieldName = "string"
              )
            )
          ),
          BlogConfiguration = list(
            BlogFieldMappings = list(
              list(
                DataSourceFieldName = "AUTHOR"|"DISPLAY_URL"|"ITEM_TYPE"|"LABELS"|"PUBLISH_DATE"|"SPACE_KEY"|"SPACE_NAME"|"URL"|"VERSION",
                DateFieldFormat = "string",
                IndexFieldName = "string"
              )
            )
          ),
          AttachmentConfiguration = list(
            CrawlAttachments = TRUE|FALSE,
            AttachmentFieldMappings = list(
              list(
                DataSourceFieldName = "AUTHOR"|"CONTENT_TYPE"|"CREATED_DATE"|"DISPLAY_URL"|"FILE_SIZE"|"ITEM_TYPE"|"PARENT_ID"|"SPACE_KEY"|"SPACE_NAME"|"URL"|"VERSION",
                DateFieldFormat = "string",
                IndexFieldName = "string"
              )
            )
          ),
          VpcConfiguration = list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          ),
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          ProxyConfiguration = list(
            Host = "string",
            Port = 123,
            Credentials = "string"
          ),
          AuthenticationType = "HTTP_BASIC"|"PAT"
        ),
        GoogleDriveConfiguration = list(
          SecretArn = "string",
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          FieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          ExcludeMimeTypes = list(
            "string"
          ),
          ExcludeUserAccounts = list(
            "string"
          ),
          ExcludeSharedDrives = list(
            "string"
          )
        ),
        WebCrawlerConfiguration = list(
          Urls = list(
            SeedUrlConfiguration = list(
              SeedUrls = list(
                "string"
              ),
              WebCrawlerMode = "HOST_ONLY"|"SUBDOMAINS"|"EVERYTHING"
            ),
            SiteMapsConfiguration = list(
              SiteMaps = list(
                "string"
              )
            )
          ),
          CrawlDepth = 123,
          MaxLinksPerPage = 123,
          MaxContentSizePerPageInMegaBytes = 123.0,
          MaxUrlsPerMinuteCrawlRate = 123,
          UrlInclusionPatterns = list(
            "string"
          ),
          UrlExclusionPatterns = list(
            "string"
          ),
          ProxyConfiguration = list(
            Host = "string",
            Port = 123,
            Credentials = "string"
          ),
          AuthenticationConfiguration = list(
            BasicAuthentication = list(
              list(
                Host = "string",
                Port = 123,
                Credentials = "string"
              )
            )
          )
        ),
        WorkDocsConfiguration = list(
          OrganizationId = "string",
          CrawlComments = TRUE|FALSE,
          UseChangeLog = TRUE|FALSE,
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          FieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          )
        ),
        FsxConfiguration = list(
          FileSystemId = "string",
          FileSystemType = "WINDOWS",
          VpcConfiguration = list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          ),
          SecretArn = "string",
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          FieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          )
        ),
        SlackConfiguration = list(
          TeamId = "string",
          SecretArn = "string",
          VpcConfiguration = list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          ),
          SlackEntityList = list(
            "PUBLIC_CHANNEL"|"PRIVATE_CHANNEL"|"GROUP_MESSAGE"|"DIRECT_MESSAGE"
          ),
          UseChangeLog = TRUE|FALSE,
          CrawlBotMessage = TRUE|FALSE,
          ExcludeArchived = TRUE|FALSE,
          SinceCrawlDate = "string",
          LookBackPeriod = 123,
          PrivateChannelFilter = list(
            "string"
          ),
          PublicChannelFilter = list(
            "string"
          ),
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          FieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          )
        ),
        BoxConfiguration = list(
          EnterpriseId = "string",
          SecretArn = "string",
          UseChangeLog = TRUE|FALSE,
          CrawlComments = TRUE|FALSE,
          CrawlTasks = TRUE|FALSE,
          CrawlWebLinks = TRUE|FALSE,
          FileFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          TaskFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          CommentFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          WebLinkFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          VpcConfiguration = list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          )
        ),
        QuipConfiguration = list(
          Domain = "string",
          SecretArn = "string",
          CrawlFileComments = TRUE|FALSE,
          CrawlChatRooms = TRUE|FALSE,
          CrawlAttachments = TRUE|FALSE,
          FolderIds = list(
            "string"
          ),
          ThreadFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          MessageFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          AttachmentFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          VpcConfiguration = list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          )
        ),
        JiraConfiguration = list(
          JiraAccountUrl = "string",
          SecretArn = "string",
          UseChangeLog = TRUE|FALSE,
          Project = list(
            "string"
          ),
          IssueType = list(
            "string"
          ),
          Status = list(
            "string"
          ),
          IssueSubEntityFilter = list(
            "COMMENTS"|"ATTACHMENTS"|"WORKLOGS"
          ),
          AttachmentFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          CommentFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          IssueFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          ProjectFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          WorkLogFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          VpcConfiguration = list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          )
        ),
        GitHubConfiguration = list(
          SaaSConfiguration = list(
            OrganizationName = "string",
            HostUrl = "string"
          ),
          OnPremiseConfiguration = list(
            HostUrl = "string",
            OrganizationName = "string",
            SslCertificateS3Path = list(
              Bucket = "string",
              Key = "string"
            )
          ),
          Type = "SAAS"|"ON_PREMISE",
          SecretArn = "string",
          UseChangeLog = TRUE|FALSE,
          GitHubDocumentCrawlProperties = list(
            CrawlRepositoryDocuments = TRUE|FALSE,
            CrawlIssue = TRUE|FALSE,
            CrawlIssueComment = TRUE|FALSE,
            CrawlIssueCommentAttachment = TRUE|FALSE,
            CrawlPullRequest = TRUE|FALSE,
            CrawlPullRequestComment = TRUE|FALSE,
            CrawlPullRequestCommentAttachment = TRUE|FALSE
          ),
          RepositoryFilter = list(
            "string"
          ),
          InclusionFolderNamePatterns = list(
            "string"
          ),
          InclusionFileTypePatterns = list(
            "string"
          ),
          InclusionFileNamePatterns = list(
            "string"
          ),
          ExclusionFolderNamePatterns = list(
            "string"
          ),
          ExclusionFileTypePatterns = list(
            "string"
          ),
          ExclusionFileNamePatterns = list(
            "string"
          ),
          VpcConfiguration = list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          ),
          GitHubRepositoryConfigurationFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          GitHubCommitConfigurationFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          GitHubIssueDocumentConfigurationFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          GitHubIssueCommentConfigurationFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          GitHubIssueAttachmentConfigurationFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          GitHubPullRequestCommentConfigurationFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          GitHubPullRequestDocumentConfigurationFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          GitHubPullRequestDocumentAttachmentConfigurationFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          )
        ),
        AlfrescoConfiguration = list(
          SiteUrl = "string",
          SiteId = "string",
          SecretArn = "string",
          SslCertificateS3Path = list(
            Bucket = "string",
            Key = "string"
          ),
          CrawlSystemFolders = TRUE|FALSE,
          CrawlComments = TRUE|FALSE,
          EntityFilter = list(
            "wiki"|"blog"|"documentLibrary"
          ),
          DocumentLibraryFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          BlogFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          WikiFieldMappings = list(
            list(
              DataSourceFieldName = "string",
              DateFieldFormat = "string",
              IndexFieldName = "string"
            )
          ),
          InclusionPatterns = list(
            "string"
          ),
          ExclusionPatterns = list(
            "string"
          ),
          VpcConfiguration = list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          )
        ),
        TemplateConfiguration = list(
          Template = list()
        )
      ),
      VpcConfiguration = list(
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        )
      ),
      Description = "string",
      Schedule = "string",
      RoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string",
      LanguageCode = "string",
      CustomDocumentEnrichmentConfiguration = list(
        InlineConfigurations = list(
          list(
            Condition = list(
              ConditionDocumentAttributeKey = "string",
              Operator = "GreaterThan"|"GreaterThanOrEquals"|"LessThan"|"LessThanOrEquals"|"Equals"|"NotEquals"|"Contains"|"NotContains"|"Exists"|"NotExists"|"BeginsWith",
              ConditionOnValue = list(
                StringValue = "string",
                StringListValue = list(
                  "string"
                ),
                LongValue = 123,
                DateValue = as.POSIXct(
                  "2015-01-01"
                )
              )
            ),
            Target = list(
              TargetDocumentAttributeKey = "string",
              TargetDocumentAttributeValueDeletion = TRUE|FALSE,
              TargetDocumentAttributeValue = list(
                StringValue = "string",
                StringListValue = list(
                  "string"
                ),
                LongValue = 123,
                DateValue = as.POSIXct(
                  "2015-01-01"
                )
              )
            ),
            DocumentContentDeletion = TRUE|FALSE
          )
        ),
        PreExtractionHookConfiguration = list(
          InvocationCondition = list(
            ConditionDocumentAttributeKey = "string",
            Operator = "GreaterThan"|"GreaterThanOrEquals"|"LessThan"|"LessThanOrEquals"|"Equals"|"NotEquals"|"Contains"|"NotContains"|"Exists"|"NotExists"|"BeginsWith",
            ConditionOnValue = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          LambdaArn = "string",
          S3Bucket = "string"
        ),
        PostExtractionHookConfiguration = list(
          InvocationCondition = list(
            ConditionDocumentAttributeKey = "string",
            Operator = "GreaterThan"|"GreaterThanOrEquals"|"LessThan"|"LessThanOrEquals"|"Equals"|"NotEquals"|"Contains"|"NotContains"|"Exists"|"NotExists"|"BeginsWith",
            ConditionOnValue = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          LambdaArn = "string",
          S3Bucket = "string"
        ),
        RoleArn = "string"
      )
    )
