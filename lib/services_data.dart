import './models/service.dart';
import './models/service_type.dart';
import './models/service_info.dart';

const SERVICES = const [
  Service(
    id: 's1',
    title: 'Обработка данных',
    imageUrl: 'https://ttc.kz/images/content/services/service-img1.png',
  ),
  Service(
    id: 's2',
    title: 'Для офиса',
    imageUrl: 'https://ttc.kz/images/content/services/service-img2.png',
  ),
  Service(
    id: 's3',
    title: 'Для бизнеса',
    imageUrl: 'https://ttc.kz/images/content/services/service-img3.png',
  ),
  Service(
    id: 's4',
    title: 'Для дома',
    imageUrl: 'https://ttc.kz/images/content/services/service-img4.png',
  ),
  Service(
    id: 's5',
    title: 'Операторам связи',
    imageUrl: 'https://ttc.kz/images/content/services/service-img5.png',
  ),
];

const SERVICES_TYPES = const [
  ServiceType(
    id: 't1',
    service: 's1',
    title: 'Virtual Data Center',
    description: 'Одним из решений оптимизации...',
    imageUrl: 'http://admin.ttc.kz/storage/app/uploads/public/5b1/507/3b7/thumb_28_60_60_0_0_crop.png'
  ),
  ServiceType(
      id: 't2',
      service: 's1',
      title: 'Co-location',
      description: 'Co-location – это размещение клиентских...',
      imageUrl: 'http://admin.ttc.kz/storage/app/uploads/public/5b1/79b/77c/thumb_30_60_60_0_0_crop.png'
  ),
  ServiceType(
      id: 't3',
      service: 's1',
      title: 'Virtual Data Center',
      description: 'Одним из решений оптимизации внутренних',
      imageUrl: 'http://admin.ttc.kz/storage/app/uploads/public/5b1/507/3b7/thumb_28_60_60_0_0_crop.png'
  ),
  ServiceType(
      id: 't4',
      service: 's1',
      title: 'Virtual Data Center',
      description: 'Одним из решений оптимизации внутренних',
      imageUrl: 'http://admin.ttc.kz/storage/app/uploads/public/5b1/507/3b7/thumb_28_60_60_0_0_crop.png'
  ),
  ServiceType(
      id: 't5',
      service: 's1',
      title: 'Virtual Data Center',
      description: 'Одним из решений оптимизации внутренних',
      imageUrl: 'http://admin.ttc.kz/storage/app/uploads/public/5b1/507/3b7/thumb_28_60_60_0_0_crop.png'
  ),
  ServiceType(
      id: 't6',
      service: 's1',
      title: 'Virtual Data Center',
      description: 'Одним из решений оптимизации внутренних',
      imageUrl: 'http://admin.ttc.kz/storage/app/uploads/public/5b1/507/3b7/thumb_28_60_60_0_0_crop.png'
  ),
];

const SERVICES_INFO = const [
  ServiceInfo(
    title: 'Virtual Data Center',
    description: 'Одним из решений оптимизации внутренних',
    serviceStructure: ['Предоставление в аренду один или нескольких виртуальных серверов необходимой конфигурации', 'Высоконагруженные проекты']
  )
];