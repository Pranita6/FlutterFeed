class AppwriteConstants{
  static const String databaseId = '65dc77ac95551f9c3fc3';
  static const String projectId = '65d88d23107e7e960650';
  static const String endPoint = 'https://cloud.appwrite.io/v1';
  static const String usersCollection = '660146c14a46a4cefad6' ;
                                        
  static const String tweetsCollection = '6601be02505ba62c6590' ;
  static const String imagesBucket = '6602ce096592d193ab96';
    static const String notificationsCollection = '66127f4ab4a25ad89baa';
  
  
static String imageUrl(String imageId) => '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}