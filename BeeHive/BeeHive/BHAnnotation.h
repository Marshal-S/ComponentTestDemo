/**
 * Created by BeeHive.
 * Copyright (c) 2016, Alibaba, Inc. All rights reserved.
 *
 * This source code is licensed under the GNU GENERAL PUBLIC LICENSE.
 * For the full copyright and license information,please view the LICENSE file in the root directory of this source tree.
 */


#import <Foundation/Foundation.h>
#import "BeeHive.h"

#ifndef BeehiveModSectName

#define BeehiveModSectName "BeehiveMods"

#endif

#ifndef BeehiveServiceSectName

#define BeehiveServiceSectName "BeehiveServices"

#endif

//used 需要保留的
//函数：TEXT
//数据：DATA(section)
//Macho 文件格式
//
#define BeeHiveDATA(sectname) __attribute((used, section("__DATA,"#sectname" ")))



#define BeeHiveMod(name) \
class BeeHive; char * k##name##_mod BeeHiveDATA(BeehiveMods) = ""#name"";

//HomeProtocol
#define BeeHiveService(servicename,impl) \
class BeeHive; char * k##servicename##_service BeeHiveDATA(BeehiveServices) = "{ \""#servicename"\" : \""#impl"\"}";

//__DATA  BeehiveServices
/**
 char *kHomeProtocol_service __attribute((used, section("__DATA,"#BeehiveServices" "))) =
 {\"""HomeProtocol"""\,\""""BHViewController"""\}
 */

@interface BHAnnotation : NSObject

@end
