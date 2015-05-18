//
//  ActualPage.m
//  MyCountryBook
//
//  Created by Priya on 03/05/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import "ActualPage.h"

@interface ActualPage ()
{
    NSArray *counrty, *description, *title, *completepath;
}

@end

@implementation ActualPage
@synthesize myimageview,mytextview,mypagenotext,index,titletext;

- (void)viewDidLoad {
    [super viewDidLoad];
   
    counrty=[[NSArray alloc]initWithObjects:@"india.jpg",@"africa.jpg",@"australia.jpg",@"italy1.jpg",@"china.jpg",@"japan.jpg",@"singaporejpg.jpg",@"new zeland.jpg",@"spain.jpg",@"Dubai.jpg", nil];
    mypagenotext.text=[NSString stringWithFormat:@"%ld",index];
    [myimageview setImage:[UIImage imageNamed:[counrty objectAtIndex:index-1]]];

    // mytextview.text=[description objectAtIndex:index-1];
    
    //Property List
    
    NSString *propertyList =[[NSBundle mainBundle]pathForResource:@"CountryList" ofType:@"plist"];
    NSDictionary *country_dict=[[NSDictionary alloc]initWithContentsOfFile:propertyList];
    NSArray *titleary =[[NSArray alloc]init];
    titleary=[country_dict valueForKey:@"Country"];
    titletext.text=[titleary objectAtIndex:index-1];
    
    
    //File
    
    NSString *india_path =[[self filePath]stringByAppendingPathComponent:@"india.txt"];
     NSString *africa_path =[[self filePath]stringByAppendingPathComponent:@"africa.txt"];
    NSString *australia_path =[[self filePath]stringByAppendingPathComponent:@"australia.txt"];
    NSString *italy_path =[[self filePath]stringByAppendingPathComponent:@"italy.txt"];
    NSString *china_path =[[self filePath]stringByAppendingPathComponent:@"china.txt"];
    NSString *japan_path =[[self filePath]stringByAppendingPathComponent:@"japan.txt"];
    NSString *singapore_path =[[self filePath]stringByAppendingPathComponent:@"singapore.txt"];
    NSString *newzealand_path =[[self filePath]stringByAppendingPathComponent:@"newzealand.txt"];
    NSString *spain_path =[[self filePath]stringByAppendingPathComponent:@"spain.txt"];
    NSString *dubai_path =[[self filePath]stringByAppendingPathComponent:@"dubai.txt"];
    NSLog(@"%@", india_path);

    
    //Write to file
    
    NSArray *india_file=[[NSArray alloc]initWithObjects:@"Every kind of thoughts can be developed in Indian culture freely. Both, theism and atheism have flourished well in it. Vast inheritance of devotion, philosophy of treating innermost being as a tiny unit of supreme being, recognition of the existence of God; Jainism, Buddhism, Islam and Christianity; all have been given respectable places in Indian culture . There is no restriction to the growth of opinions. Philosophic recognitions have never been treated as indelible marks. Unless and until they are antisocial and unethical, no practice or experimentation is prohibited in India", nil];
    [india_file writeToFile:india_path atomically:YES];
    NSArray *africa_file=[[NSArray alloc]initWithObjects:@"Wildlife safaris in Africa Spotting a magnificent black-maned lion on a Kalahari dune, relaxing to watch elephants mud-bathing in the midday sun, or following a pack of wild dogs at high speed as they hunt – all have figured amongst our travellers’ best wildlife safaris in Africa.However, there is such a variety of options – about 90% of our trips are wildlife safaris – that making blanket recommendations for what we think are the best wildlife safaris would be foolish. The truth is that choosing the wildlife safari which is best for your trip to Africa depends enormously on you: what you want to see, how you like to travel and what kind of experiences you want. Make your first step towards this: a call to discuss your ideas with one of our experts", nil];
    [africa_file writeToFile:africa_path atomically:YES];
    NSArray *australia_file=[[NSArray alloc]initWithObjects:@"Australia, New Zealand and the group of islands in the south Pacific Ocean are called Australia. Australia is the smallest continent in the world. Australia lies entirely in the southern hemisphere, the tropic of Capricorn runs almost through the middle of this continent Great Dividing Range is the major mountain of Australia. Murray Darling are the major rivers of this continent. Coal, iron ore, bauxite are the chief minerals found in this continent. Kangaroos, dingoes koalas are the unique animals found in Australia.", nil];
    [australia_file writeToFile:australia_path atomically:YES];
    NSArray *italy_file=[[NSArray alloc]initWithObjects:@"Italians believe a country that does not appreciate art is a country with no soul. This clearly shows the impact that art has had on Italian culture. During Italy's twelve thousand years many of the most famous artists from sculptors to painters to musicians to architects have come from Italy. Think for a minute what modern art or any art since the fifteenth or sixteenth centuries would be like without the Renaissance.", nil];
    [italy_file writeToFile:italy_path atomically:YES];
    NSArray *chiina_file=[[NSArray alloc]initWithObjects:@"The Chinese Reform has been underway for more than a quarter of a century. This historical social transformation is one in which all of Chinese society is moving toward urbanization. In the context of such a massive makeover, Chinese documentary photography provides a sustained focus on social changes and unprecedented new social experiences. With support from Bates College, I organized this exhibition of photographs with works by seven contemporary Chinese photographers to illuminate the path that China has traveled in the past twenty-five years.", nil];
    [chiina_file writeToFile:china_path atomically:YES];
    NSArray *japan_file=[[NSArray alloc]initWithObjects:@"Japan is also a very appreciative and cultured country. Japan has a large, state-of-the art  in virtually every major city The Japanese, who place high value on education, attend one of over 60 national universities or the countless other private institutions there. The Japanese also are lovers of all types of sports. Baseball, soccer, volleyball, tennis, and skiing are all secular favorites Japan is a wondrous country filled with a rich cultural heritage and many customs that are different from those in the western world. The customs in Japan have created many do’s and don’ts that make travel to Japan very interesting", nil];
    [japan_file writeToFile:japan_path atomically:YES];
    NSArray *singapore_file=[[NSArray alloc]initWithObjects:@"In 1963 Singapore gained independence from the United Kingdom. Many of the people who lived in Singapore went there from India, Malaysia and China in seek of labouring work to earn money. After independence was granted the process of finding a single Singaporean identity began. The country has been called a society in transition because of the fact that the people who live there do not speak the same language, share religious beliefs or even come from the same culture. English is declared to be the nation’s first language, however in a census by the government, just 80% of Singaporeans were literate in English. The diverse culture can be noticed when you walk the streets to see mosques, synagogues and churches.", nil];
    [singapore_file writeToFile:singapore_path atomically:YES];
    NSArray *newzealand_file=[[NSArray alloc]initWithObjects:@"New Zealand has a lot of beautiful natural sceneries, such as long, sandy beach with coconut trees in North Island, the Lake Taupo, which is the largest lake and the head water of the Waikato River- the longest river of New Zealand, and numerous mineral hot springs in Lake Taupo district offer you a mazing both. Once you soak your feet in the hot spring, you well forget all of trouble in your life and enjoy the mysterious feeling. You can also survey narrow inlet and activity volcano with light smoke goes up windily in Auckland.",nil];
    [newzealand_file writeToFile:newzealand_path atomically:YES];
    NSArray *spain_file=[[NSArray alloc]initWithObjects:@"Spain is a beautiful country with astonishing landmarks and geographic information. Spain is located in southwest Europe (World Almanac 834) on the Liberian peninsula . To the north of Spain is France and the Bay of Biscay, to the south is the Strait of Gibraltar in the east is the Medaterian Sea, and in the west are Portugal and the Atlantic Ocean (World Almanac 834, 466). Two major landforms are the Sierra Nevada and the Pico de Aneto Mountain (World Book 741). Spain is also the largest country in the Liberian peninsula (Croy 7). Two major rivers in Spain are Duro River and the Guadiana River. (World Book 471). Spain’s language is Spanish and their religion is Roman Catholic and Muslim (World Almanac 834)", nil];
    [spain_file writeToFile:spain_path atomically:YES];
    NSArray *dubai_file=[[NSArray alloc]initWithObjects:@"Dubai the new destination for the rich and famous. Arabs who made millions of dollars have invested their fortune into a new city to put them on the map. But, with the hard economic climate, is Dubai necessary in the current economy of the world. Dubai’s extreme projects and buildings are unnecessary and serves little to no purpose. Dubai has spent billions of dollar in construction projects. When these are funded by the government and the investments are failures, the government becomes unstable. Some projects serve no purpose and have no functionality, but are built for the prestige and glory of having such amazing buildings. Why does Dubai need to have the world’s largest mall, skyscraper, an indoor ski sleep and man made islands. Do any of these serve purpose", nil];
    [dubai_file writeToFile:dubai_path atomically:YES];
    
    NSArray *allpaths=[[NSArray alloc]initWithObjects:india_path, africa_path, australia_path, italy_path, china_path, japan_path, singapore_path, newzealand_path, spain_path, dubai_path, nil];
    
    //Reading from file

    NSFileManager *filemanager =[NSFileManager defaultManager];
    if ([filemanager fileExistsAtPath:[allpaths objectAtIndex:index-1]]) {
        NSMutableArray *read_info=[[NSMutableArray alloc]initWithContentsOfFile:[allpaths objectAtIndex:index-1]];
        mytextview.text=[read_info firstObject];
    }

}
                     
-(NSString *)filePath
{
    completepath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *myPath=[completepath firstObject];
    return myPath;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
