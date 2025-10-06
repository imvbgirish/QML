#ifndef GALLERYVIEWMODEL_H
#define GALLERYVIEWMODEL_H

#include <QAbstractListModel>
#include <QDebug>
#include <QMap>
#include <QDate>
#include <QObject>
\
class GalleryViewModel : public QAbstractListModel
{
    Q_OBJECT
public:
    GalleryViewModel();
    ~GalleryViewModel();

    enum Roles{
        DATE = 1,
        IMAGE
    };

    // QAbstractItemModel interface
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

    QMap<QDate, QStringList> getGallery() const;
    void setGallery(const QMap<QDate, QStringList> &newGallery);

    Q_INVOKABLE void addImages(const QDate &date, const QStringList &images);

private:
    QMap<QDate, QStringList>  m_gallery;
};

#endif // GALLERYVIEWMODEL_H
