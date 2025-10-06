#include "galleryviewmodel.h"

GalleryViewModel::GalleryViewModel() {
    qDebug() << Q_FUNC_INFO;
}

GalleryViewModel::~GalleryViewModel()
{
    qDebug() << Q_FUNC_INFO;
}

int GalleryViewModel::rowCount(const QModelIndex &parent) const
{
    qDebug() << Q_FUNC_INFO;

    Q_UNUSED(parent);
    return m_gallery.size();
}

QHash<int, QByteArray> GalleryViewModel::roleNames() const
{
    qDebug() << Q_FUNC_INFO;

    QHash<int, QByteArray> roles;
    roles.insert(DATE, "date");
    roles.insert(IMAGE, "images");
    return roles;
}

QVariant GalleryViewModel::data(const QModelIndex &index, int role) const
{
    qDebug() << Q_FUNC_INFO;

    if(!index.isValid() || index.row() < 0 || index.row() >= m_gallery.size())
        return QVariant();

    auto it = m_gallery.constBegin();
    std::advance(it,index.row());

    switch(role){
    case DATE:
        return it.key().toString("dd MMM yyyy");
    case IMAGE:
        return it.value();
    default:
        return QVariant();
    }
    return QVariant();
}

QMap<QDate, QStringList> GalleryViewModel::getGallery() const
{
    return m_gallery;
}

void GalleryViewModel::setGallery(const QMap<QDate, QStringList> &newGallery){
    m_gallery = newGallery;
}

void GalleryViewModel::addImages(const QDate &date, const QStringList &images)
{
    auto pos = m_gallery.find(date);
    if (pos == m_gallery.end()) {
        beginInsertRows(QModelIndex(), m_gallery.size(), m_gallery.size());
        m_gallery.insert(date, images);
        endInsertRows();
    } else {
        pos.value().append(images);
        int idx = std::distance(m_gallery.begin(), pos);
        emit dataChanged(index(idx), index(idx), {IMAGE});
    }
}
